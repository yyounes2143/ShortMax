package com.applovin.impl;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.d0;
import com.applovin.impl.e0;
import com.applovin.impl.s3;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public abstract class j5 extends g5 implements s3.a {

    /* renamed from: g  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.b f8177g;

    /* renamed from: h  reason: collision with root package name */
    private AppLovinAdLoadListener f8178h;

    /* renamed from: i  reason: collision with root package name */
    protected final String f8179i;

    /* renamed from: j  reason: collision with root package name */
    private final com.applovin.impl.sdk.m f8180j;

    /* renamed from: k  reason: collision with root package name */
    private final Collection f8181k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f8182l;

    /* renamed from: m  reason: collision with root package name */
    protected ExecutorService f8183m;

    /* renamed from: n  reason: collision with root package name */
    protected ExecutorService f8184n;

    /* renamed from: o  reason: collision with root package name */
    protected List f8185o;

    /* renamed from: p  reason: collision with root package name */
    private d0 f8186p;

    /* loaded from: classes2.dex */
    class a implements e0.a {
        a() {
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            j5.this.f8177g.b(uri);
            com.applovin.impl.sdk.o oVar = j5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                j5 j5Var = j5.this;
                com.applovin.impl.sdk.o oVar2 = j5Var.f7962c;
                String str = j5Var.f7961b;
                oVar2.a(str, "Ad updated with muteImageUri = " + uri);
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements e0.a {
        b() {
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            j5.this.f8177g.c(uri);
            com.applovin.impl.sdk.o oVar = j5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                j5 j5Var = j5.this;
                com.applovin.impl.sdk.o oVar2 = j5Var.f7962c;
                String str = j5Var.f7961b;
                oVar2.a(str, "Ad updated with unmuteImageUri = " + uri);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements e0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e0.a f8189a;

        c(e0.a aVar) {
            this.f8189a = aVar;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.o oVar = j5.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    j5 j5Var = j5.this;
                    com.applovin.impl.sdk.o oVar2 = j5Var.f7962c;
                    String str = j5Var.f7961b;
                    oVar2.a(str, "Finish caching video for ad #" + j5.this.f8177g.getAdIdNumber() + ". Updating ad with cachedVideoURL = " + uri);
                }
                this.f8189a.a(uri);
                return;
            }
            com.applovin.impl.sdk.o oVar3 = j5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                j5 j5Var2 = j5.this;
                j5Var2.f7962c.b(j5Var2.f7961b, "Failed to cache video");
            }
            j5.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            Bundle bundle = new Bundle();
            bundle.putLong("ad_id", j5.this.f8177g.getAdIdNumber());
            j5.this.f7960a.u().a(bundle, "video_caching_failed");
        }
    }

    /* loaded from: classes2.dex */
    class d implements d0.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f8191a;

        d(e eVar) {
            this.f8191a = eVar;
        }

        @Override // com.applovin.impl.d0.c
        public void a(String str, boolean z10) {
            if (z10) {
                j5.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                return;
            }
            e eVar = this.f8191a;
            if (eVar != null) {
                eVar.a(str);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j5(String str, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, kVar);
        String uuid;
        this.f8179i = UUID.randomUUID().toString();
        if (bVar != null) {
            this.f8177g = bVar;
            this.f8178h = appLovinAdLoadListener;
            this.f8180j = kVar.H();
            this.f8181k = h();
            if (((Boolean) kVar.a(v4.I0)).booleanValue()) {
                if (kVar.r0().f()) {
                    this.f8183m = kVar.r0().a();
                    this.f8184n = kVar.r0().e();
                    return;
                }
                if (StringUtils.isValidString(bVar.getMediationServeId())) {
                    uuid = bVar.getMediationServeId();
                } else {
                    uuid = UUID.randomUUID().toString();
                }
                b6 r02 = kVar.r0();
                this.f8183m = r02.a("com.applovin.sdk.caching." + uuid, ((Integer) kVar.a(v4.K0)).intValue());
                b6 r03 = kVar.r0();
                this.f8184n = r03.a("com.applovin.sdk.caching.html." + uuid, ((Integer) kVar.a(v4.L0)).intValue());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("No ad specified.");
    }

    private Collection h() {
        HashSet hashSet = new HashSet();
        for (char c10 : ((String) this.f7960a.a(v4.D0)).toCharArray()) {
            hashSet.add(Character.valueOf(c10));
        }
        hashSet.add('\"');
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f8178h;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.f8177g);
            this.f8178h = null;
        }
    }

    @Override // com.applovin.impl.s3.a
    public void a(v2 v2Var) {
        if (v2Var.P().equalsIgnoreCase(this.f8177g.getMediationServeId())) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "Updating flag for timeout...");
            }
            g();
        }
        this.f7960a.Z().b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e0 b(String str, e0.a aVar) {
        return a(str, this.f8177g.c0(), true, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri c(String str) {
        return b(str, this.f8177g.c0(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Rendered new ad:" + this.f8177g);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.pb
            @Override // java.lang.Runnable
            public final void run() {
                j5.this.i();
            }
        });
    }

    protected void g() {
        this.f8182l = true;
        List list = this.f8185o;
        if (list != null && !list.isEmpty()) {
            for (c0 c0Var : this.f8185o) {
                c0Var.a(true);
            }
        }
        if (this.f7960a.r0().f()) {
            d0 d0Var = this.f8186p;
            if (d0Var != null) {
                d0Var.c();
                return;
            }
            return;
        }
        ExecutorService executorService = this.f8183m;
        if (executorService != null) {
            executorService.shutdown();
            this.f8183m = null;
        }
        ExecutorService executorService2 = this.f8184n;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.f8184n = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        if (o0.e()) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Caching mute images...");
        }
        Uri a10 = a(this.f8177g.Q(), "mute");
        if (a10 != null) {
            this.f8177g.b(a10);
        }
        Uri a11 = a(this.f8177g.i0(), CampaignEx.JSON_NATIVE_VIDEO_UNMUTE);
        if (a11 != null) {
            this.f8177g.c(a11);
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Ad updated with muteImageFilename = " + this.f8177g.Q() + ", unmuteImageFilename = " + this.f8177g.i0());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        this.f7960a.Z().b(this);
        if (!this.f7960a.r0().f()) {
            ExecutorService executorService = this.f8183m;
            if (executorService != null) {
                executorService.shutdown();
                this.f8183m = null;
            }
            ExecutorService executorService2 = this.f8184n;
            if (executorService2 != null) {
                executorService2.shutdown();
                this.f8184n = null;
            }
        }
        MaxAdFormat d10 = this.f8177g.getAdZone().d();
        if (((Boolean) this.f7960a.a(v4.W0)).booleanValue() && d10 != null && d10.isFullscreenAd()) {
            this.f7960a.h().b(this.f8177g);
        }
        this.f7960a.d0().a(this.f8179i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l() {
        return this.f8182l;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8177g.o1()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Subscribing to timeout events...");
            }
            this.f7960a.Z().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri b(String str, List list, boolean z10) {
        if (StringUtils.isValidString(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str2 = this.f7961b;
                oVar.a(str2, "Caching video " + str + "...");
            }
            int a10 = this.f7960a.H().a(str, this.f8177g);
            Map a11 = e2.a((AppLovinAdImpl) this.f8177g);
            String a12 = this.f8180j.a(a(), str, this.f8177g.getCachePrefix(), list, z10, a10, this.f8179i, a11);
            if (StringUtils.isValidString(a12)) {
                File a13 = this.f8180j.a(a12, a());
                if (a13 != null) {
                    Uri fromFile = Uri.fromFile(a13);
                    if (fromFile != null) {
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar2 = this.f7962c;
                            String str3 = this.f7961b;
                            oVar2.a(str3, "Finish caching video for ad #" + this.f8177g.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + a12);
                        }
                        return fromFile;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar3 = this.f7962c;
                        String str4 = this.f7961b;
                        oVar3.b(str4, "Unable to create URI from cached video file = " + a13);
                    }
                    a(a12, "extractUriFromVideoFile", a11);
                    return null;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar4 = this.f7962c;
                    String str5 = this.f7961b;
                    oVar4.b(str5, "Unable to retrieve File from cached video filename = " + a12);
                }
                a(a12, "retrieveVideoFile", a11);
                return null;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar5 = this.f7962c;
                String str6 = this.f7961b;
                oVar5.b(str6, "Failed to cache video: " + str);
            }
            a(str, "cacheVideo", a11);
            a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c(String str, List list, boolean z10) {
        try {
            InputStream a10 = this.f8180j.a(str, list, z10, e2.a((AppLovinAdImpl) this.f8177g));
            if (a10 == null) {
                if (a10 != null) {
                    a10.close();
                }
                return null;
            }
            String a11 = this.f8180j.a(a10);
            a10.close();
            return a11;
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Unknown failure to read input stream.", th2);
            }
            this.f7962c.a(this.f7961b, th2);
            this.f7960a.E().a(this.f7961b, "readInputStreamAsString", th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List e() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Caching mute images...");
        }
        ArrayList arrayList = new ArrayList();
        if (this.f8177g.Q() != null) {
            arrayList.add(a(this.f8177g.Q().toString(), new a()));
        }
        if (this.f8177g.i0() != null) {
            arrayList.add(a(this.f8177g.i0().toString(), new b()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List a(List list) {
        this.f8185o = list;
        return this.f7960a.r0().a(list, this.f8183m);
    }

    protected e0 a(String str, e0.a aVar) {
        return new e0(str, this.f8177g, this.f8179i, this.f7960a, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e0 a(String str, List list, boolean z10, e0.a aVar) {
        if (TextUtils.isEmpty(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "No video to cache, skipping...");
                return null;
            }
            return null;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str2 = this.f7961b;
            oVar.a(str2, "Caching video " + str + "...");
        }
        return new e0(str, this.f8177g, list, z10, this.f8179i, this.f7960a, new c(aVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d0 a(String str, List list, e eVar) {
        d0 d0Var = new d0(str, this.f8177g, list, this.f8184n, this.f8179i, this.f7960a, new d(eVar));
        this.f8186p = d0Var;
        return d0Var;
    }

    protected Uri a(Uri uri, String str) {
        if (uri == null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str2 = this.f7961b;
                oVar.a(str2, "No " + str + " image to cache");
            }
            return null;
        }
        String uri2 = uri.toString();
        if (TextUtils.isEmpty(uri2)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str3 = this.f7961b;
                oVar2.a(str3, "Failed to cache " + str + " image");
            }
            return null;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar3 = this.f7962c;
            String str4 = this.f7961b;
            oVar3.a(str4, "Caching " + str + " image...");
        }
        return b(uri2);
    }

    protected Uri b(String str) {
        return a(str, this.f8177g.c0(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri a(String str, List list, boolean z10) {
        try {
            int a10 = this.f7960a.H().a(str, this.f8177g);
            Map a11 = e2.a((AppLovinAdImpl) this.f8177g);
            String a12 = this.f8180j.a(a(), str, this.f8177g.getCachePrefix(), list, z10, a10, this.f8179i, a11);
            if (StringUtils.isValidString(a12)) {
                File a13 = this.f8180j.a(a12, a());
                if (a13 != null) {
                    Uri fromFile = Uri.fromFile(a13);
                    if (fromFile != null) {
                        return fromFile;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7962c.b(this.f7961b, "Unable to extract Uri from image file");
                    }
                    a(a12, "extractUriFromImageFile", a11);
                    return null;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7962c;
                    String str2 = this.f7961b;
                    oVar.b(str2, "Unable to retrieve File from cached image filename = " + a12);
                }
                a(a12, "retrieveImageFile", a11);
                return null;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str3 = this.f7961b;
                oVar2.b(str3, "Failed to cache image: " + str);
            }
            a(str, "cacheImageResource", a11);
            return null;
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar3 = this.f7962c;
                String str4 = this.f7961b;
                oVar3.a(str4, "Failed to cache image at url = " + str, th2);
            }
            Map a14 = e2.a((AppLovinAdImpl) this.f8177g);
            CollectionUtils.putStringIfValid("url", str, a14);
            this.f7960a.E().a(this.f7961b, "cacheImageResource", th2, a14);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.applovin.impl.sdk.ad.b bVar) {
        String k02 = bVar.k0();
        if (bVar.V0() && StringUtils.isValidString(k02)) {
            String a10 = a(k02, bVar.c0(), bVar);
            bVar.c(a10);
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.f(str, "Ad updated with video button HTML assets cached = " + a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0038, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r12, java.util.List r13, com.applovin.impl.sdk.ad.b r14) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.j5.a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.b):java.lang.String");
    }

    private Uri a(String str, String str2) {
        File a10 = this.f8180j.a(k7.a(Uri.parse(str2), this.f8177g.getCachePrefix(), this.f7960a), com.applovin.impl.sdk.k.o());
        if (a10 == null) {
            return null;
        }
        if (!((Boolean) this.f7960a.a(v4.E6)).booleanValue() && this.f8180j.a(a10)) {
            return Uri.parse(AdPayload.FILE_SCHEME + a10.getAbsolutePath());
        }
        String str3 = str + str2;
        if (this.f8180j.a(a10, str3, Arrays.asList(str), this.f7960a.H().a(str3, this.f8177g), this.f8179i, e2.a((AppLovinAdImpl) this.f8177g))) {
            return Uri.parse(AdPayload.FILE_SCHEME + a10.getAbsolutePath());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10) {
        if (this.f8178h != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Calling back ad load failed with error code: " + i10);
            }
            this.f8178h.failedToReceiveAd(i10);
            this.f8178h = null;
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, String str2, Map map) {
        HashMap hashMap = new HashMap(map);
        CollectionUtils.putStringIfValid("url", str, hashMap);
        this.f7960a.E().a(c2.f7681z0, str2, hashMap);
    }
}
