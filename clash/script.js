// @ts-check

/**
 * @typedef {{
 *   name: string,
 *   type?: string,
 *   url?: string,
 *   interval?: number,
 *   lazy?: boolean,
 *   proxies?: string[]
 * }} ProxyGroup
 *
 * @typedef {{
 *   name: string,
 *   server?: string,
 *   type?: string,
 *   url?: string,
 *   interval?: number,
 *   lazy?: boolean,
 *   proxies?: string[]
 * }} ProxyNode
 *
 * @typedef {{
 *   proxies: ProxyNode[],
 *   "proxy-groups": ProxyGroup[]
 * }} ClashConfig
 */

/**
 * @param {ClashConfig} config
 * @param {string} profileName
 * @returns {ClashConfig}
 */
function main(config, profileName) {
  config["proxy-groups"].push({
    name: "AI",
    type: "url-test",
    url: "https://gemini.google.com",
    interval: 3000,
    lazy: true,
    proxies: ["🇯🇵 日本 01", "🇯🇵 日本 02", "🇯🇵 日本 03", "🇯🇵 日本 04", "🇯🇵 日本 05", '🇸🇬 新加坡 01', '🇸🇬 新加坡 02', '🇸🇬 新加坡 03', '🇸🇬 新加坡 04', '🇸🇬 新加坡 05'],
  });

  // 拷贝 proxies 名称白名单
  const allowedNames = new Set(
    config.proxies
      .filter(p => !p.name.includes("香港"))
      .map(p => p.name)
  );

  // 过滤代理节点
  config.proxies = config.proxies.filter(p => allowedNames.has(p.name));

  // 过滤掉分组引用里不存在的节点
  config["proxy-groups"] = config["proxy-groups"].map(group => {
    if (Array.isArray(group.proxies)) {
      group.proxies = group.proxies.filter(name => allowedNames.has(name));
    }
    return group;
  });

  return config;
}
