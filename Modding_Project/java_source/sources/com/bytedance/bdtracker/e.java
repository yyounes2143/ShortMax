package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.event.AutoTrackEventType;
import com.bytedance.applog.exception.AppCrashType;
import com.bytedance.applog.log.EventBus;
import com.bytedance.bdtracker.l0;
import com.bytedance.mpaas.IEncryptor;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e implements EventBus.DataFetcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InitConfig f11950a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f11951b;

    public e(d dVar, InitConfig initConfig) {
        this.f11951b = dVar;
        this.f11950a = initConfig;
    }

    @Override // com.bytedance.applog.log.EventBus.DataFetcher
    public Object fetch() {
        boolean z10;
        String str;
        boolean z11;
        boolean z12;
        String str2;
        String str3;
        String str4;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", this.f11950a.getAid());
            jSONObject.put(AppsFlyerProperties.CHANNEL, this.f11950a.getChannel());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("AppLog版本号", "6.15.4");
            jSONObject2.put("AppLog版本地区", "海外");
            jSONObject2.put("接口加密开关", this.f11951b.E);
            if (this.f11951b.E) {
                IEncryptor encryptor = this.f11950a.getEncryptor();
                if (encryptor == null) {
                    str4 = "未配置";
                } else {
                    str4 = "客户端已配置";
                }
                jSONObject2.put("是否配置了自定义加密", str4);
                String str5 = "默认加密类型";
                if ((encryptor instanceof z) && !"a".equals(((z) encryptor).encryptorType())) {
                    str5 = ((z) encryptor).encryptorType();
                }
                jSONObject2.put("自定义加密类型", str5);
            }
            jSONObject2.put("日志开关", this.f11950a.isLogEnable());
            boolean z13 = false;
            if (this.f11950a.getLogger() != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            jSONObject2.put("自定义日志打印", z10);
            jSONObject2.put("AB实验开关", this.f11950a.isAbEnable());
            jSONObject2.put("自动启动图开关", this.f11950a.autoStart());
            jSONObject2.put("自动激活开关", this.f11950a.isAutoActive());
            jSONObject2.put("H5打通开关", this.f11950a.isH5BridgeEnable());
            jSONObject2.put("H5全埋点注入", this.f11950a.isH5CollectEnable());
            if (this.f11950a.getH5BridgeAllowlist() != null && !this.f11950a.getH5BridgeAllowlist().isEmpty()) {
                jSONObject2.put("H5域名白名单", TextUtils.join("、", this.f11950a.getH5BridgeAllowlist()));
            }
            jSONObject2.put("不过滤H5域名开关", this.f11950a.isH5BridgeAllowAll());
            jSONObject2.put("全埋点开关", this.f11950a.isAutoTrackEnabled());
            ArrayList arrayList = new ArrayList();
            if (AutoTrackEventType.a(this.f11950a.getAutoTrackEventType(), 4)) {
                arrayList.add("点击事件");
            }
            if (AutoTrackEventType.a(this.f11950a.getAutoTrackEventType(), 2)) {
                arrayList.add("页面事件");
            }
            if (AutoTrackEventType.a(this.f11950a.getAutoTrackEventType(), 8)) {
                arrayList.add("页面离开事件");
            }
            if (!arrayList.isEmpty()) {
                jSONObject.put("全埋点类型", TextUtils.join("、", arrayList));
            }
            jSONObject2.put("视图曝光开关", this.f11950a.isExposureEnabled());
            jSONObject2.put("内部监控开关", this.f11950a.isMonitorEnabled());
            jSONObject2.put("采集屏幕方向开关", this.f11950a.isScreenOrientationEnabled());
            jSONObject2.put("初始化UUID", this.f11950a.getUserUniqueId());
            jSONObject2.put("初始化UUID类型", this.f11950a.getUserUniqueIdType());
            jSONObject2.put("采集OAID开关", this.f11950a.isOaidEnabled());
            jSONObject2.put("补偿OAID开关", this.f11950a.isReportOaidEnable());
            jSONObject2.put("采集ANDROID ID开关", this.f11950a.isAndroidIdEnabled());
            jSONObject2.put("采集运营商信息开关", this.f11950a.isOperatorInfoEnabled());
            jSONObject2.put("采集ICCID开关", this.f11950a.isIccIdEnabled());
            jSONObject2.put("采集SerialNumber开关", this.f11950a.isSerialNumberEnable());
            jSONObject2.put("自动采集FRAGMENT开关", this.f11950a.isAutoTrackFragmentEnabled());
            jSONObject2.put("后台静默开关", this.f11950a.isSilenceInBackground());
            jSONObject2.put("鸿蒙设备采集开关", this.f11950a.isHarmonyEnabled());
            jSONObject2.put("隐私模式开关", this.f11951b.f11924x);
            jSONObject2.put("禁止采集详细信息开关", !this.f11951b.reportPhoneDetailInfo());
            if (AppCrashType.hasCrashType(this.f11950a.getTrackCrashType(), 1)) {
                str = "JAVA";
            } else {
                str = "不采集";
            }
            jSONObject2.put("采集Crash", str);
            if (this.f11951b.f11926z != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            jSONObject2.put("ALINK监听", z11);
            if (this.f11951b.A != null) {
                z12 = true;
            } else {
                z12 = false;
            }
            jSONObject2.put("自定义激活参数", z12);
            jSONObject2.put("延迟深度链接开关", this.f11950a.isDeferredALinkEnabled());
            jSONObject2.put("缓存文件名称", this.f11950a.getSpName());
            jSONObject2.put("数据库文件名称", this.f11950a.getDbName());
            jSONObject2.put("监听生命周期", this.f11950a.isHandleLifeCycle());
            jSONObject2.put("小版本号", this.f11950a.getVersionMinor());
            jSONObject2.put("版本号编码", String.valueOf(this.f11950a.getVersionCode()));
            jSONObject2.put("版本号", this.f11950a.getVersion());
            jSONObject2.put("应用名称", this.f11950a.getAppName());
            if (this.f11950a.getPicker() != null) {
                z13 = true;
            }
            jSONObject2.put("圈选配置", z13);
            if (this.f11951b.f11915o.h()) {
                str2 = "主进程";
            } else {
                str2 = "子进程";
            }
            jSONObject2.put("当前进程", str2);
            jSONObject2.put("地区", this.f11950a.getRegion());
            jSONObject2.put("语言", this.f11950a.getLanguage());
            jSONObject2.put("PLAY开关", this.f11950a.isPlayEnable());
            jSONObject2.put("Gaid开关", this.f11950a.isGaidEnabled());
            if (this.f11950a.isGaidEnabled()) {
                jSONObject2.put("GAID 获取超时时间", this.f11950a.getGaidTimeOutMilliSeconds());
            }
            jSONObject2.put("PageMeta接口注解开关", this.f11950a.isPageMetaAnnotationEnable());
            if (this.f11950a.getUriConfig() != null) {
                ArrayList arrayList2 = new ArrayList();
                if (this.f11950a.getUriConfig().getSendUris() != null) {
                    arrayList2.addAll(Arrays.asList(this.f11950a.getUriConfig().getSendUris()));
                }
                if (l0.b.d(this.f11950a.getUriConfig().getRegisterUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getRegisterUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getSettingUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getSettingUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getAbUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getAbUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getActiveUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getActiveUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getSettingUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getSettingUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getBusinessUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getBusinessUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getProfileUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getProfileUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getReportOaidUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getReportOaidUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getAlinkAttributionUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getAlinkAttributionUri());
                }
                if (l0.b.d(this.f11950a.getUriConfig().getAlinkQueryUri())) {
                    arrayList2.add(this.f11950a.getUriConfig().getAlinkQueryUri());
                }
                str3 = TextUtils.join("、", arrayList2);
            } else {
                str3 = "SaaS默认";
            }
            jSONObject2.put("服务域名配置", str3);
            jSONObject.put("config", jSONObject2);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
