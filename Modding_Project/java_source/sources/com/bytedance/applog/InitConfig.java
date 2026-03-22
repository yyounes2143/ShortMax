package com.bytedance.applog;

import android.accounts.Account;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.bdtracker.j2;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.m5;
import com.bytedance.bdtracker.z;
import com.bytedance.mpaas.IEncryptor;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class InitConfig {
    public String A;
    public Map<String, Object> B;
    public Account C;
    public boolean D;
    public INetworkClient E;
    public boolean G;
    public String L;
    public String M;
    public ISensitiveInfoProvider N;
    public List<String> T;
    public String X;
    public boolean Y;

    /* renamed from: a  reason: collision with root package name */
    public final String f11744a;

    /* renamed from: c  reason: collision with root package name */
    public String f11748c;

    /* renamed from: d  reason: collision with root package name */
    public String f11750d;

    /* renamed from: e  reason: collision with root package name */
    public z f11752e;

    /* renamed from: f  reason: collision with root package name */
    public String f11754f;

    /* renamed from: g  reason: collision with root package name */
    public String f11756g;

    /* renamed from: h  reason: collision with root package name */
    public ILogger f11758h;

    /* renamed from: i  reason: collision with root package name */
    public String f11760i;

    /* renamed from: j  reason: collision with root package name */
    public String f11762j;

    /* renamed from: k  reason: collision with root package name */
    public IPicker f11764k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11766l;

    /* renamed from: n  reason: collision with root package name */
    public boolean f11770n;

    /* renamed from: p  reason: collision with root package name */
    public String f11774p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f11776q;

    /* renamed from: r  reason: collision with root package name */
    public String f11778r;

    /* renamed from: s  reason: collision with root package name */
    public UriConfig f11780s;

    /* renamed from: t  reason: collision with root package name */
    public String f11782t;

    /* renamed from: u  reason: collision with root package name */
    public String f11784u;

    /* renamed from: v  reason: collision with root package name */
    public int f11786v;

    /* renamed from: w  reason: collision with root package name */
    public int f11788w;

    /* renamed from: x  reason: collision with root package name */
    public int f11790x;

    /* renamed from: y  reason: collision with root package name */
    public String f11791y;

    /* renamed from: z  reason: collision with root package name */
    public String f11792z;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11746b = true;

    /* renamed from: m  reason: collision with root package name */
    public boolean f11768m = false;

    /* renamed from: o  reason: collision with root package name */
    public int f11772o = 0;
    public boolean F = true;
    public boolean H = false;
    public boolean I = true;
    public boolean J = true;
    public boolean K = true;
    public boolean O = true;
    public boolean P = true;
    public boolean Q = false;
    public boolean R = false;
    public boolean S = false;
    public boolean U = false;
    public boolean V = false;
    public boolean W = true;
    public IpcDataChecker Z = null;
    @Deprecated

    /* renamed from: a0  reason: collision with root package name */
    public String f11745a0 = null;
    @Deprecated

    /* renamed from: b0  reason: collision with root package name */
    public String f11747b0 = null;

    /* renamed from: c0  reason: collision with root package name */
    public boolean f11749c0 = true;

    /* renamed from: d0  reason: collision with root package name */
    public boolean f11751d0 = false;

    /* renamed from: e0  reason: collision with root package name */
    public boolean f11753e0 = false;

    /* renamed from: f0  reason: collision with root package name */
    public boolean f11755f0 = true;

    /* renamed from: g0  reason: collision with root package name */
    public boolean f11757g0 = true;

    /* renamed from: h0  reason: collision with root package name */
    public boolean f11759h0 = true;

    /* renamed from: i0  reason: collision with root package name */
    public boolean f11761i0 = false;

    /* renamed from: j0  reason: collision with root package name */
    public boolean f11763j0 = false;

    /* renamed from: k0  reason: collision with root package name */
    public boolean f11765k0 = false;

    /* renamed from: l0  reason: collision with root package name */
    public boolean f11767l0 = false;

    /* renamed from: m0  reason: collision with root package name */
    public boolean f11769m0 = true;

    /* renamed from: n0  reason: collision with root package name */
    public int f11771n0 = 6;

    /* renamed from: o0  reason: collision with root package name */
    public boolean f11773o0 = true;

    /* renamed from: p0  reason: collision with root package name */
    public boolean f11775p0 = true;

    /* renamed from: q0  reason: collision with root package name */
    public int f11777q0 = 2000;

    /* renamed from: r0  reason: collision with root package name */
    public int f11779r0 = 0;

    /* renamed from: s0  reason: collision with root package name */
    public Map<String, String> f11781s0 = null;

    /* renamed from: t0  reason: collision with root package name */
    public boolean f11783t0 = true;

    /* renamed from: u0  reason: collision with root package name */
    public boolean f11785u0 = true;

    /* renamed from: v0  reason: collision with root package name */
    public boolean f11787v0 = true;

    /* renamed from: w0  reason: collision with root package name */
    public Set<String> f11789w0 = new HashSet(4);

    /* loaded from: classes3.dex */
    public interface IpcDataChecker {
        boolean checkIpcData(@NonNull String[] strArr);
    }

    public InitConfig(@NonNull String str, @NonNull String str2) {
        this.f11744a = str;
        this.f11748c = str2;
    }

    public void addLoaderFilter(String str) {
        this.f11789w0.add(str);
    }

    public boolean autoStart() {
        return this.f11746b;
    }

    public InitConfig clearABCacheOnUserChange(boolean z10) {
        this.W = z10;
        return this;
    }

    public void clearDidAndIid(String str) {
        this.D = true;
        this.f11750d = str;
    }

    public InitConfig disableDeferredALink() {
        this.V = false;
        return this;
    }

    public InitConfig enableDeferredALink() {
        this.V = true;
        return this;
    }

    public Account getAccount() {
        return this.C;
    }

    public String getAid() {
        return this.f11744a;
    }

    public String getAliyunUdid() {
        return this.f11762j;
    }

    public boolean getAnonymous() {
        return this.f11766l;
    }

    public String getAppImei() {
        return this.X;
    }

    public String getAppName() {
        return this.f11778r;
    }

    public int getAutoTrackEventType() {
        return this.f11771n0;
    }

    public String getChannel() {
        return this.f11748c;
    }

    public String getClearKey() {
        return this.f11750d;
    }

    public Map<String, Object> getCommonHeader() {
        return this.B;
    }

    public String getDbName() {
        if (TextUtils.isEmpty(this.L)) {
            return l0.b.a((Object) this.f11744a) + "@bd_tea_agent.db";
        }
        return this.L;
    }

    public IEncryptor getEncryptor() {
        return this.f11752e;
    }

    public int getGaidTimeOutMilliSeconds() {
        return this.f11777q0;
    }

    public String getGoogleAid() {
        return this.f11754f;
    }

    @Nullable
    public List<String> getH5BridgeAllowlist() {
        return this.T;
    }

    public Map<String, String> getHttpHeaders() {
        return this.f11781s0;
    }

    public IpcDataChecker getIpcDataChecker() {
        return this.Z;
    }

    public String getLanguage() {
        return this.f11756g;
    }

    public Set<String> getLoaderFilters() {
        return this.f11789w0;
    }

    public boolean getLocalTest() {
        return this.f11768m;
    }

    public ILogger getLogger() {
        return this.f11758h;
    }

    public String getManifestVersion() {
        return this.f11791y;
    }

    public int getManifestVersionCode() {
        return this.f11790x;
    }

    public INetworkClient getNetworkClient() {
        return this.E;
    }

    public boolean getNotReuqestSender() {
        return this.f11776q;
    }

    public IPicker getPicker() {
        return this.f11764k;
    }

    public m5 getPreInstallCallback() {
        return null;
    }

    public int getProcess() {
        return this.f11772o;
    }

    public String getRegion() {
        return this.f11760i;
    }

    public String getReleaseBuild() {
        return this.f11774p;
    }

    public ISensitiveInfoProvider getSensitiveInfoProvider() {
        return this.N;
    }

    public String getSpName() {
        return this.M;
    }

    public int getTrackCrashType() {
        return this.f11779r0;
    }

    public String getTweakedChannel() {
        return this.f11784u;
    }

    public int getUpdateVersionCode() {
        return this.f11788w;
    }

    public UriConfig getUriConfig() {
        return this.f11780s;
    }

    @Deprecated
    public String getUserUniqueId() {
        return this.f11745a0;
    }

    @Deprecated
    public String getUserUniqueIdType() {
        return this.f11747b0;
    }

    public String getVersion() {
        return this.f11782t;
    }

    public int getVersionCode() {
        return this.f11786v;
    }

    public String getVersionMinor() {
        return this.f11792z;
    }

    public String getZiJieCloudPkg() {
        return this.A;
    }

    public boolean isAbEnable() {
        return this.H;
    }

    public boolean isAndroidIdEnabled() {
        return this.f11759h0;
    }

    public boolean isAutoActive() {
        return this.F;
    }

    public boolean isAutoTrackEnabled() {
        return this.I;
    }

    public boolean isAutoTrackFragmentEnabled() {
        return this.f11753e0;
    }

    public boolean isClearABCacheOnUserChange() {
        return this.W;
    }

    public boolean isClearDidAndIid() {
        return this.D;
    }

    public boolean isCongestionControlEnable() {
        return this.K;
    }

    public boolean isDeferredALinkEnabled() {
        return this.V;
    }

    public boolean isEventFilterEnable() {
        return this.Y;
    }

    public boolean isExposureEnabled() {
        return this.f11761i0;
    }

    public boolean isGaidEnabled() {
        return this.f11775p0;
    }

    public boolean isH5BridgeAllowAll() {
        return this.U;
    }

    public boolean isH5BridgeEnable() {
        return this.Q;
    }

    public boolean isH5CollectEnable() {
        return this.R;
    }

    public boolean isHandleLifeCycle() {
        return this.J;
    }

    public boolean isHarmonyEnabled() {
        return this.f11751d0;
    }

    public boolean isIccIdEnabled() {
        return this.f11783t0;
    }

    public boolean isImeiEnable() {
        return this.P;
    }

    public boolean isLogEnable() {
        return this.S;
    }

    public boolean isMacEnable() {
        return this.O;
    }

    public boolean isMetaSecEnabled() {
        return this.f11755f0;
    }

    public boolean isMigrateEnabled() {
        return this.f11773o0;
    }

    public boolean isMonitorEnabled() {
        return this.f11763j0;
    }

    public boolean isOaidEnabled() {
        return this.f11757g0;
    }

    public boolean isOperatorInfoEnabled() {
        return this.f11769m0;
    }

    public boolean isPageMetaAnnotationEnable() {
        return this.f11787v0;
    }

    public boolean isPlayEnable() {
        return this.f11770n;
    }

    public boolean isReportOaidEnable() {
        return this.f11767l0;
    }

    public boolean isScreenOrientationEnabled() {
        return this.f11765k0;
    }

    public boolean isSerialNumberEnable() {
        return this.f11785u0;
    }

    public boolean isSilenceInBackground() {
        return this.G;
    }

    public boolean isTrackEventEnabled() {
        return this.f11749c0;
    }

    public InitConfig putCommonHeader(Map<String, Object> map) {
        this.B = map;
        return this;
    }

    public void setAbEnable(boolean z10) {
        this.H = z10;
    }

    public InitConfig setAccount(Account account) {
        this.C = account;
        return this;
    }

    public InitConfig setAliyunUdid(String str) {
        this.f11762j = str;
        return this;
    }

    public void setAndroidIdEnabled(boolean z10) {
        this.f11759h0 = z10;
    }

    public InitConfig setAnonymous(boolean z10) {
        this.f11766l = z10;
        return this;
    }

    public void setAppImei(String str) {
        this.X = str;
    }

    public InitConfig setAppName(String str) {
        this.f11778r = str;
        return this;
    }

    public void setAutoActive(boolean z10) {
        this.F = z10;
    }

    public InitConfig setAutoStart(boolean z10) {
        this.f11746b = z10;
        return this;
    }

    public void setAutoTrackEnabled(boolean z10) {
        this.I = z10;
    }

    public void setAutoTrackEventType(int i10) {
        this.f11771n0 = i10;
    }

    public void setAutoTrackFragmentEnabled(boolean z10) {
        this.f11753e0 = z10;
    }

    public void setChannel(@NonNull String str) {
        this.f11748c = str;
    }

    public void setCongestionControlEnable(boolean z10) {
        this.K = z10;
    }

    public InitConfig setDbName(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.L = str;
        }
        return this;
    }

    @NonNull
    public InitConfig setEnablePlay(boolean z10) {
        this.f11770n = z10;
        return this;
    }

    public InitConfig setEncryptor(IEncryptor iEncryptor) {
        this.f11752e = new z(iEncryptor, "a");
        return this;
    }

    public void setEventFilterEnable(boolean z10) {
        this.Y = z10;
    }

    public void setExposureEnabled(boolean z10) {
        this.f11761i0 = z10;
    }

    public void setGaidEnabled(boolean z10) {
        this.f11775p0 = z10;
    }

    public void setGaidTimeOutMilliSeconds(int i10) {
        this.f11777q0 = i10;
    }

    @NonNull
    public InitConfig setGoogleAid(String str) {
        this.f11754f = str;
        return this;
    }

    public InitConfig setH5BridgeAllowAll(boolean z10) {
        this.U = z10;
        return this;
    }

    public InitConfig setH5BridgeAllowlist(List<String> list) {
        this.T = list;
        return this;
    }

    public InitConfig setH5BridgeEnable(boolean z10) {
        this.Q = z10;
        return this;
    }

    public InitConfig setH5CollectEnable(boolean z10) {
        this.R = z10;
        return this;
    }

    public void setHandleLifeCycle(boolean z10) {
        this.J = z10;
    }

    public void setHarmonyEnable(boolean z10) {
        this.f11751d0 = z10;
    }

    public void setHttpHeaders(Map<String, String> map) {
        this.f11781s0 = map;
    }

    public void setIccIdEnabled(boolean z10) {
        this.f11783t0 = z10;
    }

    public InitConfig setImeiEnable(boolean z10) {
        this.P = z10;
        return this;
    }

    public InitConfig setIpcDataChecker(IpcDataChecker ipcDataChecker) {
        this.Z = ipcDataChecker;
        return this;
    }

    @NonNull
    public InitConfig setLanguage(String str) {
        this.f11756g = str;
        return this;
    }

    public InitConfig setLocalTest(boolean z10) {
        this.f11768m = z10;
        return this;
    }

    public InitConfig setLogEnable(boolean z10) {
        this.S = z10;
        return this;
    }

    public InitConfig setLogger(ILogger iLogger) {
        this.f11758h = iLogger;
        return this;
    }

    public void setMacEnable(boolean z10) {
        this.O = z10;
    }

    public InitConfig setMainProcess() {
        this.f11772o = 1;
        return this;
    }

    public InitConfig setManifestVersion(String str) {
        this.f11791y = str;
        return this;
    }

    public InitConfig setManifestVersionCode(int i10) {
        this.f11790x = i10;
        return this;
    }

    public void setMetaSecEnabled(boolean z10) {
        this.f11755f0 = z10;
    }

    public void setMigrateEnabled(boolean z10) {
        this.f11773o0 = z10;
    }

    public void setMonitorEnabled(boolean z10) {
        j2.b(this);
        this.f11763j0 = z10;
    }

    public InitConfig setNetworkClient(INetworkClient iNetworkClient) {
        this.E = iNetworkClient;
        return this;
    }

    public InitConfig setNotRequestSender(boolean z10) {
        this.f11776q = z10;
        return this;
    }

    public void setOaidEnabled(boolean z10) {
        this.f11757g0 = z10;
    }

    public void setOperatorInfoEnabled(boolean z10) {
        this.f11769m0 = z10;
    }

    public void setPageMetaAnnotationEnable(boolean z10) {
        this.f11787v0 = z10;
    }

    @NonNull
    public InitConfig setPicker(IPicker iPicker) {
        this.f11764k = iPicker;
        return this;
    }

    @NonNull
    public InitConfig setProcess(int i10) {
        this.f11772o = i10;
        return this;
    }

    @NonNull
    public InitConfig setRegion(String str) {
        this.f11760i = str;
        return this;
    }

    @NonNull
    public InitConfig setReleaseBuild(String str) {
        this.f11774p = str;
        return this;
    }

    public void setReportOaidEnable(boolean z10) {
        this.f11767l0 = z10;
    }

    public void setScreenOrientationEnabled(boolean z10) {
        this.f11765k0 = z10;
    }

    public void setSensitiveInfoProvider(ISensitiveInfoProvider iSensitiveInfoProvider) {
        this.N = iSensitiveInfoProvider;
    }

    public void setSerialNumberEnable(boolean z10) {
        this.f11785u0 = z10;
    }

    public void setSilenceInBackground(boolean z10) {
        this.G = z10;
    }

    public InitConfig setSpName(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.M = str;
        }
        return this;
    }

    public void setTrackCrashType(int i10) {
        this.f11779r0 = i10;
    }

    public void setTrackEventEnabled(boolean z10) {
        this.f11749c0 = z10;
    }

    public InitConfig setTweakedChannel(String str) {
        this.f11784u = str;
        return this;
    }

    public InitConfig setUpdateVersionCode(int i10) {
        this.f11788w = i10;
        return this;
    }

    public InitConfig setUriConfig(int i10) {
        this.f11780s = UriConfig.createUriConfig(i10);
        return this;
    }

    @Deprecated
    public InitConfig setUserUniqueId(String str) {
        this.f11745a0 = str;
        return this;
    }

    @Deprecated
    public InitConfig setUserUniqueIdType(String str) {
        this.f11747b0 = str;
        return this;
    }

    public InitConfig setVersion(String str) {
        this.f11782t = str;
        return this;
    }

    public InitConfig setVersionCode(int i10) {
        this.f11786v = i10;
        return this;
    }

    public InitConfig setVersionMinor(String str) {
        this.f11792z = str;
        return this;
    }

    public InitConfig setZiJieCloudPkg(String str) {
        this.A = str;
        return this;
    }

    public InitConfig setEncryptor(IEncryptor iEncryptor, String str) {
        this.f11752e = new z(iEncryptor, str);
        return this;
    }

    public InitConfig setUriConfig(UriConfig uriConfig) {
        this.f11780s = uriConfig;
        return this;
    }

    public InitConfig setPreInstallChannelCallback(m5 m5Var) {
        return this;
    }
}
