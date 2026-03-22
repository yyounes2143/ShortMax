package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.net.HttpURLConnection;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.m  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3056m {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f25013b = 0;

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3074n1 f25014a;

    public C3056m(InterfaceC3074n1 mResultListener) {
        Intrinsics.checkNotNullParameter(mResultListener, "mResultListener");
        this.f25014a = mResultListener;
    }

    public static void a(File file, HttpURLConnection httpURLConnection, BufferedOutputStream bufferedOutputStream) {
        try {
            if (file.exists()) {
                file.delete();
                Intrinsics.checkNotNullExpressionValue("m", "TAG");
            }
            httpURLConnection.disconnect();
            T9.a(bufferedOutputStream);
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
