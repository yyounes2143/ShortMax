package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Ac extends N9 {
    public final AtomicBoolean A;

    /* renamed from: y  reason: collision with root package name */
    public final int f23485y;

    /* renamed from: z  reason: collision with root package name */
    public final int f23486z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ac(String url, C3198ue c3198ue, String str, int i10, int i11) {
        super(ShareTarget.METHOD_POST, url, c3198ue, G4.a(G4.f23672a, false, 1, null), (InterfaceC3269z5) null, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter(ShareTarget.METHOD_POST, "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(ShareTarget.ENCODING_TYPE_URL_ENCODED, "requestContentType");
        this.f23485y = i10;
        this.f23486z = i11;
        this.f23897m = str;
        this.A = new AtomicBoolean(false);
    }
}
