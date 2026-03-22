package com.inmobi.media;

import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.controllers.PublisherCallbacks;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.t5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3173t5 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f25303a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ PublisherCallbacks f25304b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f25305c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3173t5(InMobiBanner inMobiBanner, PublisherCallbacks publisherCallbacks, boolean z10) {
        super(0);
        this.f25303a = inMobiBanner;
        this.f25304b = publisherCallbacks;
        this.f25305c = z10;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        R1 mAdManager$media_release;
        String frameSizeString;
        this.f25303a.a();
        if (InMobiBanner.access$checkForRefreshRate(this.f25303a) && (mAdManager$media_release = this.f25303a.getMAdManager$media_release()) != null) {
            PublisherCallbacks publisherCallbacks = this.f25304b;
            frameSizeString = this.f25303a.getFrameSizeString();
            mAdManager$media_release.a(publisherCallbacks, frameSizeString, this.f25305c);
        }
        return Unit.f60915a;
    }
}
