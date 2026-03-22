package com.inmobi.ads;

import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.A5;
import com.inmobi.media.InterfaceC3269z5;
import com.inmobi.media.R1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class d extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f23420a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ byte[] f23421b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InMobiBanner inMobiBanner, byte[] bArr) {
        super(0);
        this.f23420a = inMobiBanner;
        this.f23421b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InMobiBanner.a aVar;
        InterfaceC3269z5 p10;
        R1 mAdManager$media_release = this.f23420a.getMAdManager$media_release();
        if (mAdManager$media_release != null && (p10 = mAdManager$media_release.p()) != null) {
            String access$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$cp, "access$getTAG$cp(...)");
            ((A5) p10).c(access$getTAG$cp, "load with response");
        }
        R1 mAdManager$media_release2 = this.f23420a.getMAdManager$media_release();
        if (mAdManager$media_release2 != null) {
            byte[] bArr = this.f23421b;
            aVar = this.f23420a.f23385e;
            mAdManager$media_release2.a(bArr, aVar);
        }
        return Unit.f60915a;
    }
}
