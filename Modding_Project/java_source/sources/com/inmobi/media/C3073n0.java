package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.n0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3073n0 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3089o0 f25047a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3073n0(C3089o0 c3089o0) {
        super(0);
        this.f25047a = c3089o0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z10;
        if (this.f25047a.f25080h == EnumC2927df.f24613c) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
