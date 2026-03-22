package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class N9 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23885a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23886b;

    /* renamed from: c  reason: collision with root package name */
    public final C3198ue f23887c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f23888d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f23889e;

    /* renamed from: f  reason: collision with root package name */
    public final String f23890f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f23891g;

    /* renamed from: h  reason: collision with root package name */
    public final String f23892h;

    /* renamed from: i  reason: collision with root package name */
    public final HashMap f23893i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap f23894j;

    /* renamed from: k  reason: collision with root package name */
    public final HashMap f23895k;

    /* renamed from: l  reason: collision with root package name */
    public JSONObject f23896l;

    /* renamed from: m  reason: collision with root package name */
    public String f23897m;

    /* renamed from: n  reason: collision with root package name */
    public P9 f23898n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f23899o;

    /* renamed from: p  reason: collision with root package name */
    public int f23900p;

    /* renamed from: q  reason: collision with root package name */
    public int f23901q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f23902r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f23903s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f23904t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f23905u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f23906v;

    /* renamed from: w  reason: collision with root package name */
    public C3180tc f23907w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f23908x;

    public N9(String requestType, String str, C3198ue c3198ue, boolean z10, InterfaceC3269z5 interfaceC3269z5, String requestContentType, boolean z11) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(requestContentType, "requestContentType");
        this.f23885a = requestType;
        this.f23886b = str;
        this.f23887c = c3198ue;
        this.f23888d = z10;
        this.f23889e = interfaceC3269z5;
        this.f23890f = requestContentType;
        this.f23891g = z11;
        this.f23892h = N9.class.getSimpleName();
        this.f23893i = new HashMap();
        this.f23897m = Uc.b();
        this.f23900p = 60000;
        this.f23901q = 60000;
        this.f23902r = true;
        this.f23904t = true;
        this.f23905u = true;
        this.f23906v = true;
        this.f23908x = true;
        if (Intrinsics.areEqual(ShareTarget.METHOD_GET, requestType)) {
            this.f23894j = new HashMap();
        } else if (Intrinsics.areEqual(ShareTarget.METHOD_POST, requestType)) {
            this.f23895k = new HashMap();
            this.f23896l = new JSONObject();
        }
    }

    public final void a(Function1 onResponse) {
        Intrinsics.checkNotNullParameter(onResponse, "onResponse");
        InterfaceC3269z5 interfaceC3269z5 = this.f23889e;
        if (interfaceC3269z5 != null) {
            String str = this.f23892h;
            StringBuilder a10 = H6.a(str, "TAG", "executeAsync: ");
            a10.append(this.f23886b);
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        e();
        if (!this.f23888d) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23889e;
            if (interfaceC3269z52 != null) {
                String TAG = this.f23892h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).c(TAG, "Dropping REQUEST FOR GDPR");
            }
            P9 p92 = new P9();
            p92.f23982d = new I9(EnumC3093o4.f25096j, "Network Request dropped as current request is not GDPR compliant.");
            onResponse.invoke(p92);
            return;
        }
        C3196uc request = a();
        M9 responseListener = new M9(this, onResponse);
        Intrinsics.checkNotNullParameter(responseListener, "responseListener");
        request.f25344l = responseListener;
        Set set = AbstractC3228wc.f25391a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "request");
        AbstractC3228wc.f25391a.add(request);
        AbstractC3228wc.a(request, 0L);
    }

    public final P9 b() {
        C3260yc a10;
        EnumC3093o4 enumC3093o4;
        InterfaceC3269z5 interfaceC3269z5 = this.f23889e;
        if (interfaceC3269z5 != null) {
            String str = this.f23892h;
            StringBuilder a11 = H6.a(str, "TAG", "Executing network request to URL: ");
            a11.append(this.f23886b);
            ((A5) interfaceC3269z5).c(str, a11.toString());
        }
        e();
        if (!this.f23888d) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23889e;
            if (interfaceC3269z52 != null) {
                String TAG = this.f23892h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).c(TAG, "Dropping REQUEST FOR GDPR");
            }
            P9 p92 = new P9();
            p92.f23982d = new I9(EnumC3093o4.f25096j, "Network Request dropped as current request is not GDPR compliant.");
            return p92;
        }
        I9 i92 = null;
        if (this.f23898n != null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23889e;
            if (interfaceC3269z53 != null) {
                String str2 = this.f23892h;
                StringBuilder a12 = H6.a(str2, "TAG", "response has been failed before execute - ");
                P9 p93 = this.f23898n;
                if (p93 != null) {
                    i92 = p93.f23982d;
                }
                a12.append(i92);
                ((A5) interfaceC3269z53).c(str2, a12.toString());
            }
            P9 p94 = this.f23898n;
            Intrinsics.checkNotNull(p94);
            return p94;
        }
        C3196uc request = a();
        InterfaceC3269z5 interfaceC3269z54 = this.f23889e;
        if (interfaceC3269z54 != null) {
            String str3 = this.f23892h;
            StringBuilder a13 = H6.a(str3, "TAG", "Making network request to: ");
            a13.append(request.f25333a);
            ((A5) interfaceC3269z54).c(str3, a13.toString());
        }
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            a10 = H9.a(request, (Function2) null);
            I9 i93 = a10.f25468a;
            if (i93 != null) {
                enumC3093o4 = i93.f23737a;
            } else {
                enumC3093o4 = null;
            }
        } while (enumC3093o4 == EnumC3093o4.f25099m);
        P9 response = D4.a(a10);
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(this, "request");
        return response;
    }

    public final String c() {
        String str = this.f23890f;
        if (Intrinsics.areEqual(str, "application/json")) {
            return String.valueOf(this.f23896l);
        }
        if (Intrinsics.areEqual(str, ShareTarget.ENCODING_TYPE_URL_ENCODED)) {
            boolean z10 = T9.f24217a;
            T9.a(this.f23895k);
            return T9.a(ContainerUtils.FIELD_DELIMITER, (Map) this.f23895k);
        }
        return "";
    }

    public final String d() {
        int i10;
        boolean z10;
        String str = this.f23886b;
        HashMap hashMap = this.f23894j;
        if (hashMap != null) {
            T9.a(hashMap);
            String a10 = T9.a(ContainerUtils.FIELD_DELIMITER, (Map) this.f23894j);
            InterfaceC3269z5 interfaceC3269z5 = this.f23889e;
            if (interfaceC3269z5 != null) {
                String str2 = this.f23892h;
                ((A5) interfaceC3269z5).c(str2, I6.a(str2, "TAG", "Get params: ", a10));
            }
            int length = a10.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                if (!z11) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) a10.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i11++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            if (a10.subSequence(i11, length + 1).toString().length() > 0) {
                if (str != null && !StringsKt.b0(str, "?", false, 2, null)) {
                    str = str.concat("?");
                }
                if (str != null && !StringsKt.F(str, ContainerUtils.FIELD_DELIMITER, false, 2, null) && !StringsKt.F(str, "?", false, 2, null)) {
                    str = str.concat(ContainerUtils.FIELD_DELIMITER);
                }
                str = str + a10;
            }
        }
        Intrinsics.checkNotNull(str);
        return str;
    }

    public final void e() {
        f();
        this.f23893i.put(Command.HTTP_HEADER_USER_AGENT, Uc.k());
        if (Intrinsics.areEqual(ShareTarget.METHOD_POST, this.f23885a)) {
            this.f23893i.put(CommonGatewayClient.HEADER_CONTENT_TYPE, this.f23890f);
            if (this.f23891g) {
                this.f23893i.put("Content-Encoding", "gzip");
            } else {
                this.f23893i.put("Content-Length", String.valueOf(c().length()));
            }
        }
    }

    public void f() {
        HashMap hashMap;
        JSONObject c10;
        HashMap hashMap2;
        G4 g42 = G4.f23672a;
        g42.j();
        this.f23888d = g42.a(this.f23888d);
        if (Intrinsics.areEqual(ShareTarget.METHOD_GET, this.f23885a)) {
            HashMap hashMap3 = this.f23894j;
            if (this.f23904t) {
                if (hashMap3 != null) {
                    hashMap3.putAll(C2930e1.f24620e);
                }
                if (hashMap3 != null) {
                    hashMap3.putAll(L3.f23796a.a(this.f23899o));
                }
                if (hashMap3 != null) {
                    hashMap3.putAll(Y4.a());
                }
            }
            HashMap hashMap4 = this.f23894j;
            if (this.f23905u) {
                a(hashMap4);
            }
        } else if (Intrinsics.areEqual(ShareTarget.METHOD_POST, this.f23885a)) {
            HashMap hashMap5 = this.f23895k;
            if (this.f23904t) {
                if (hashMap5 != null) {
                    hashMap5.putAll(C2930e1.f24620e);
                }
                if (hashMap5 != null) {
                    hashMap5.putAll(L3.f23796a.a(this.f23899o));
                }
                if (hashMap5 != null) {
                    hashMap5.putAll(Y4.a());
                }
            }
            HashMap hashMap6 = this.f23895k;
            if (this.f23905u) {
                a(hashMap6);
            }
        }
        if (this.f23906v && (c10 = G4.c()) != null) {
            if (Intrinsics.areEqual(ShareTarget.METHOD_GET, this.f23885a)) {
                HashMap hashMap7 = this.f23894j;
                if (hashMap7 != null) {
                    String jSONObject = c10.toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
                    String str = (String) hashMap7.put("consentObject", jSONObject);
                }
            } else if (Intrinsics.areEqual(ShareTarget.METHOD_POST, this.f23885a) && (hashMap2 = this.f23895k) != null) {
                String jSONObject2 = c10.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
                String str2 = (String) hashMap2.put("consentObject", jSONObject2);
            }
        }
        if (this.f23908x) {
            if (Intrinsics.areEqual(ShareTarget.METHOD_GET, this.f23885a)) {
                HashMap hashMap8 = this.f23894j;
                if (hashMap8 != null) {
                    String str3 = (String) hashMap8.put("u-appsecure", String.valueOf((int) C2930e1.f24621f));
                }
            } else if (Intrinsics.areEqual(ShareTarget.METHOD_POST, this.f23885a) && (hashMap = this.f23895k) != null) {
                String str4 = (String) hashMap.put("u-appsecure", String.valueOf((int) C2930e1.f24621f));
            }
        }
    }

    public final C3196uc a() {
        EnumC3148rc method;
        String type = this.f23885a;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, ShareTarget.METHOD_GET)) {
            method = EnumC3148rc.f25246a;
        } else {
            method = Intrinsics.areEqual(type, ShareTarget.METHOD_POST) ? EnumC3148rc.f25247b : EnumC3148rc.f25246a;
        }
        String url = this.f23886b;
        Intrinsics.checkNotNull(url);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C3133qc c3133qc = new C3133qc(url, method);
        boolean z10 = T9.f24217a;
        T9.a(this.f23893i);
        HashMap header = this.f23893i;
        Intrinsics.checkNotNullParameter(header, "header");
        c3133qc.f25207c = header;
        c3133qc.f25212h = Integer.valueOf(this.f23900p);
        c3133qc.f25213i = Integer.valueOf(this.f23901q);
        c3133qc.f25210f = Boolean.valueOf(this.f23902r);
        c3133qc.f25214j = Boolean.valueOf(this.f23903s);
        C3180tc retryPolicy = this.f23907w;
        if (retryPolicy != null) {
            Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
            c3133qc.f25211g = retryPolicy;
        }
        int ordinal = method.ordinal();
        if (ordinal == 0) {
            HashMap queryParams = this.f23894j;
            if (queryParams != null) {
                InterfaceC3269z5 interfaceC3269z5 = this.f23889e;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f23892h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).c(TAG, "getParams " + queryParams);
                }
                Intrinsics.checkNotNullParameter(queryParams, "queryParams");
                c3133qc.f25208d = queryParams;
            }
        } else if (ordinal == 1) {
            String postBody = c();
            InterfaceC3269z5 interfaceC3269z52 = this.f23889e;
            if (interfaceC3269z52 != null) {
                String str = this.f23892h;
                ((A5) interfaceC3269z52).c(str, I6.a(str, "TAG", "httpPostBody ", postBody));
            }
            Intrinsics.checkNotNullParameter(postBody, "postBody");
            c3133qc.f25209e = postBody;
        }
        return new C3196uc(c3133qc);
    }

    public /* synthetic */ N9(String str, String str2, C3198ue c3198ue, boolean z10, InterfaceC3269z5 interfaceC3269z5, String str3, int i10) {
        this(str, str2, c3198ue, (i10 & 8) != 0 ? false : z10, interfaceC3269z5, (i10 & 32) != 0 ? ShareTarget.ENCODING_TYPE_URL_ENCODED : str3, false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public N9(String url, InterfaceC3269z5 interfaceC3269z5) {
        this(ShareTarget.METHOD_GET, url, (C3198ue) null, false, interfaceC3269z5, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter(ShareTarget.METHOD_GET, "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f23906v = false;
    }

    public final void a(HashMap hashMap) {
        V0 b10;
        String a10;
        C3198ue c3198ue = this.f23887c;
        if (c3198ue == null || hashMap == null) {
            return;
        }
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        try {
            if (c3198ue.f25347a.a() && (b10 = C3182te.f25312a.b()) != null && (a10 = b10.a()) != null) {
                Intrinsics.checkNotNull(a10);
                hashMap3.put("GPID", a10);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(C3198ue.class.getSimpleName(), "getSimpleName(...)");
        }
        String jSONObject = new JSONObject(hashMap3).toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
        hashMap2.put("u-id-map", jSONObject);
        hashMap.putAll(hashMap2);
    }
}
