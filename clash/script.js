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
 * @typedef{{
 *  type:string,
 *  behavior: string,
 *  url:string,
 *  path:string,
 *  interval:number
 * }} RuleProvider
 *
 * @typedef {{
 *   name:string
 *   proxies: ProxyNode[],
 *   "proxy-groups": ProxyGroup[]
 *   "rule-providers": Record<string, RuleProvider>,
 *   rules:string[],
 * }} ClashConfig
 */

/**
 * @param {ClashConfig} config
 */
function filterNode(config) {
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
}

/**
 * @param {ClashConfig} config
 */
function addRuleProviders(config) {
  config["rule-providers"] = {
    reject: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/reject.txt",
      path: "./ruleset/reject.yaml",
      interval: 86400,
    },

    icloud: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/icloud.txt",
      path: "./ruleset/icloud.yaml",
      interval: 86400,
    },

    apple: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/apple.txt",
      path: "./ruleset/apple.yaml",
      interval: 86400,
    },

    google: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/google.txt",
      path: "./ruleset/google.yaml",
      interval: 86400,
    },

    proxy: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/proxy.txt",
      path: "./ruleset/proxy.yaml",
      interval: 86400,
    },

    direct: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/direct.txt",
      path: "./ruleset/direct.yaml",
      interval: 86400,
    },

    private: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/private.txt",
      path: "./ruleset/private.yaml",
      interval: 86400,
    },

    gfw: {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/gfw.txt",
      path: "./ruleset/gfw.yaml",
      interval: 86400,
    },

    "tld-not-cn": {
      type: "http",
      behavior: "domain",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/tld-not-cn.txt",
      path: "./ruleset/tld-not-cn.yaml",
      interval: 86400,
    },

    telegramcidr: {
      type: "http",
      behavior: "ipcidr",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/telegramcidr.txt",
      path: "./ruleset/telegramcidr.yaml",
      interval: 86400,
    },

    cncidr: {
      type: "http",
      behavior: "ipcidr",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/cncidr.txt",
      path: "./ruleset/cncidr.yaml",
      interval: 86400,
    },

    lancidr: {
      type: "http",
      behavior: "ipcidr",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/lancidr.txt",
      path: "./ruleset/lancidr.yaml",
      interval: 86400,
    },

    applications: {
      type: "http",
      behavior: "classical",
      url: "https://cdn.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/applications.txt",
      path: "./ruleset/applications.yaml",
      interval: 86400,
    },
  }
}

/**
 * @param {ClashConfig} config
 */
function addRules(config) {
  config.rules = [
    // ai 相关
    'DOMAIN-SUFFIX,claude.ai,AI',
    'DOMAIN-SUFFIX,claude.com,AI',
    'DOMAIN-SUFFIX,openai.com,AI',
    'DOMAIN-SUFFIX,chatgpt.com,AI',
    'DOMAIN-SUFFIX,perplexity.ai,AI',
    'DOMAIN-SUFFIX,sora.com,AI',
    'DOMAIN,gemini.google.com,AI',
    'DOMAIN-SUFFIX,withgoogle.com,AI',
    'DOMAIN-SUFFIX,hf-mirror.com,DIRECT',

    // RuleProviders
    // https://github.com/Loyalsoldier/clash-rules
    'RULE-SET,applications,DIRECT',
    'DOMAIN,clash.razord.top,DIRECT',
    'DOMAIN,yacd.haishan.me,DIRECT',
    'RULE-SET,private,DIRECT',
    'RULE-SET,reject,REJECT',
    'RULE-SET,icloud,DIRECT',
    'RULE-SET,apple,DIRECT',
    'RULE-SET,google,Haita Cloud',
    'RULE-SET,proxy,Haita Cloud',
    'RULE-SET,direct,DIRECT',
    'RULE-SET,lancidr,DIRECT',
    'RULE-SET,cncidr,DIRECT',
    'RULE-SET,telegramcidr,Haita Cloud',
    'GEOIP,LAN,DIRECT',
    'GEOIP,CN,DIRECT',

    // 本地软件直连
    'PROCESS-NAME,kubectl,DIRECT',
    'PROCESS-NAME,k9s,DIRECT',
    'DOMAIN-SUFFIX,zf.link,DIRECT',
    'DOMAIN-SUFFIX,alphabets.cn,DIRECT',

    'MATCH,DIRECT',
  ]
}

/**
 * @param {ClashConfig} config
 * @param {string} profileName
 * @returns {ClashConfig}
 */
function main(config, profileName) {
  if (config.name !== "subscribe") {
    config.rules.unshift(...[
      "DOMAIN-SUFFIX,zf.link,DIRECT",
      "DOMAIN-SUFFIX,alphabets.cn,DIRECT",
      "PROCESS-NAME,kubectl,DIRECT",
      "PROCESS-NAME,k9s,DIRECT"
    ])
    return config;
  }

  config["proxy-groups"].push({
    name: "AI",
    type: "url-test",
    url: "https://gemini.google.com",
    interval: 3000,
    lazy: true,
    proxies: ["🇯🇵 日本 01", "🇯🇵 日本 02", "🇯🇵 日本 03", "🇯🇵 日本 04", "🇯🇵 日本 05", '🇸🇬 新加坡 01', '🇸🇬 新加坡 02', '🇸🇬 新加坡 03', '🇸🇬 新加坡 04', '🇸🇬 新加坡 05'],
  });

  filterNode(config);

  return config;
}
