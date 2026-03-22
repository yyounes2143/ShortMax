package com.inmobi.media;

import android.content.Context;
import com.inmobi.media.A7;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* loaded from: classes5.dex */
public final class A7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23461a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23462b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23463c;

    /* renamed from: d  reason: collision with root package name */
    public final long f23464d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f23465e;

    /* renamed from: f  reason: collision with root package name */
    public final String f23466f = A7.class.getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    public N9 f23467g;

    public A7(String str, int i10, int i11, long j10, InterfaceC3269z5 interfaceC3269z5) {
        this.f23461a = str;
        this.f23462b = i10;
        this.f23463c = i11;
        this.f23464d = j10;
        this.f23465e = interfaceC3269z5;
    }

    public final void a() {
        String str = this.f23461a;
        if (str == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23465e;
            if (interfaceC3269z5 != null) {
                String TAG = this.f23466f;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).b(TAG, "MRAID Js Url provided is invalid.");
                return;
            }
            return;
        }
        N9 n92 = new N9(str, this.f23465e);
        n92.f23904t = false;
        n92.f23905u = false;
        n92.f23908x = false;
        this.f23467g = n92;
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).submit(new Runnable() { // from class: ub.f
            @Override // java.lang.Runnable
            public final void run() {
                A7.a(A7.this);
            }
        });
    }

    public static final void a(A7 this$0) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        N9 mRequest = this$0.f23467g;
        Context d10 = Uc.d();
        if (d10 != null) {
            if ((System.currentTimeMillis() / 1000) - new Sa(d10, "mraid_js_store").b() <= this$0.f23464d || mRequest == null) {
                return;
            }
            int i10 = 0;
            while (i10 <= this$0.f23462b) {
                InterfaceC3269z5 interfaceC3269z5 = this$0.f23465e;
                if (interfaceC3269z5 != null) {
                    String TAG = this$0.f23466f;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "Attempting to get MRAID Js.");
                }
                Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                P9 b10 = mRequest.b();
                Context d11 = Uc.d();
                if (b10.b()) {
                    InterfaceC3269z5 interfaceC3269z52 = this$0.f23465e;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = this$0.f23466f;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).b(TAG2, "Getting MRAID Js from server failed.");
                    }
                    i10++;
                    if (i10 > this$0.f23462b) {
                        return;
                    }
                    try {
                        Thread.sleep(this$0.f23463c * 1000);
                    } catch (InterruptedException e10) {
                        InterfaceC3269z5 interfaceC3269z53 = this$0.f23465e;
                        if (interfaceC3269z53 != null) {
                            String TAG3 = this$0.f23466f;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((A5) interfaceC3269z53).a(TAG3, "MRAID Js client interrupted while sleeping.", e10);
                        }
                    }
                } else if (d11 != null) {
                    Sa sa2 = new Sa(d11, "mraid_js_store");
                    Map map = b10.f23984f;
                    String str = null;
                    List list = map != null ? (List) map.get("Content-Encoding") : null;
                    if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip")) {
                        InterfaceC3269z5 interfaceC3269z54 = this$0.f23465e;
                        if (interfaceC3269z54 != null) {
                            String TAG4 = this$0.f23466f;
                            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                            ((A5) interfaceC3269z54).a(TAG4, "Response is GZIP-compressed, uncompressing it");
                        }
                        boolean z10 = T9.f24217a;
                        byte[] bArr2 = b10.f23980b;
                        if (bArr2 != null && bArr2.length != 0) {
                            Intrinsics.checkNotNull(bArr2);
                            bArr = new byte[bArr2.length];
                            byte[] bArr3 = b10.f23980b;
                            Intrinsics.checkNotNull(bArr3);
                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        } else {
                            bArr = new byte[0];
                        }
                        byte[] a10 = T9.a(bArr);
                        if (a10 != null) {
                            try {
                                String str2 = new String(a10, Charsets.UTF_8);
                                InterfaceC3269z5 interfaceC3269z55 = this$0.f23465e;
                                if (interfaceC3269z55 != null) {
                                    String TAG5 = this$0.f23466f;
                                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                                    ((A5) interfaceC3269z55).a(TAG5, "Getting MRAID Js from server succeeded.");
                                }
                                str = str2;
                            } catch (UnsupportedEncodingException e11) {
                                InterfaceC3269z5 interfaceC3269z56 = this$0.f23465e;
                                if (interfaceC3269z56 != null) {
                                    String str3 = this$0.f23466f;
                                    StringBuilder a11 = H6.a(str3, "TAG", "Failed to get MRAID JS \n");
                                    a11.append(e11.getMessage());
                                    ((A5) interfaceC3269z56).b(str3, a11.toString());
                                }
                            }
                        }
                    } else {
                        InterfaceC3269z5 interfaceC3269z57 = this$0.f23465e;
                        if (interfaceC3269z57 != null) {
                            String TAG6 = this$0.f23466f;
                            Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                            ((A5) interfaceC3269z57).a(TAG6, "Getting MRAID Js from server succeeded.");
                        }
                        str = b10.a();
                    }
                    if (str != null) {
                        sa2.b("mraid_js_string", str);
                        return;
                    }
                    return;
                }
            }
        }
    }
}
