package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.g  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2960g extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2976h f24751a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2960g(C2976h c2976h) {
        super(0);
        this.f24751a = c2976h;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new AdMetaInfo(this.f24751a.o(), this.f24751a.E());
    }
}
