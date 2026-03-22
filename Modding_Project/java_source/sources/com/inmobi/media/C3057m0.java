package com.inmobi.media;

import android.graphics.Bitmap;
import com.inmobi.adquality.models.AdQualityControl;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.m0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3057m0 implements Va {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3089o0 f25015a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ V1 f25016b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f25017c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Jb f25018d;

    public C3057m0(C3089o0 c3089o0, V1 v12, boolean z10, Jb jb2) {
        this.f25015a = c3089o0;
        this.f25016b = v12;
        this.f25017c = z10;
        this.f25018d = jb2;
    }

    @Override // com.inmobi.media.Va
    public final void a(Object obj) {
        String beacon;
        Bitmap bitmap = (Bitmap) obj;
        C3089o0 c3089o0 = this.f25015a;
        V1 process = this.f25016b;
        boolean z10 = this.f25017c;
        Jb jb2 = this.f25018d;
        c3089o0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3089o0.a("Screen shot result received - isReporting - " + z10);
        c3089o0.f25078f.remove(process);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap != null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (bitmap != null && jb2 != null) {
            jb2.f23760a.c("window.mraidview.broadcastEvent('ScreenshotSuccess')");
        }
        if (!z10) {
            AdQualityControl adQualityControl = c3089o0.f25079g;
            if (adQualityControl != null && (beacon = adQualityControl.getBeacon()) != null) {
                c3089o0.a("saving to file - beacon - ".concat(beacon));
                Intrinsics.checkNotNull(byteArray);
                c3089o0.a(beacon, byteArray, false);
            }
        } else {
            String str = c3089o0.f25082j;
            Intrinsics.checkNotNull(byteArray);
            c3089o0.a(str, byteArray, true);
        }
        c3089o0.f25084l.set(false);
    }

    @Override // com.inmobi.media.Va
    public final void onError(Exception exc) {
        C3089o0 c3089o0 = this.f25015a;
        V1 process = this.f25016b;
        c3089o0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3089o0.a(exc, "error in running process - ".concat(process.getClass().getSimpleName()));
        c3089o0.f25078f.remove(process);
        c3089o0.a(true);
    }
}
