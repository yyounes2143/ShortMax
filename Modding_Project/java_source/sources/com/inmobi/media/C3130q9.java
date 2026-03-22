package com.inmobi.media;

import android.content.Context;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.q9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3130q9 implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    public final C2920d8 f25201a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f25202b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference f25203c;

    public C3130q9(Context context, ImageView imageView, C2920d8 imageAsset) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(imageAsset, "imageAsset");
        this.f25201a = imageAsset;
        this.f25202b = new WeakReference(context);
        this.f25203c = new WeakReference(imageView);
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String str;
        String str2;
        int i10;
        boolean z10;
        HashMap hashMap = D9.f23586c;
        Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
        Objects.toString(method);
        if (method != null) {
            str = method.getName();
        } else {
            str = null;
        }
        if (StringsKt.G("onError", str, true)) {
            Context context = (Context) this.f25202b.get();
            ImageView imageView = (ImageView) this.f25203c.get();
            C2920d8 c2920d8 = this.f25201a;
            if (context != null && imageView != null) {
                String str3 = c2920d8.f24593p;
                if (StringsKt.G("cross_button", c2920d8.f24579b, true)) {
                    if (str3 != null) {
                        int length = str3.length() - 1;
                        int i11 = 0;
                        boolean z11 = false;
                        while (i11 <= length) {
                            if (!z11) {
                                i10 = i11;
                            } else {
                                i10 = length;
                            }
                            if (Intrinsics.compare((int) str3.charAt(i10), 32) <= 0) {
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
                        str2 = I7.a(length, 1, str3, i11);
                    } else {
                        str2 = null;
                    }
                    if (str2 == null || str2.length() == 0) {
                        C3082n9.a(context, imageView);
                    }
                }
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put("[ERRORCODE]", "603");
            c2920d8.a("error", hashMap2, (L7) null, (InterfaceC3269z5) null);
        }
        return null;
    }
}
