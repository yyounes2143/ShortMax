package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.cc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2907cc extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f24556a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907cc(String str) {
        super(0);
        this.f24556a = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        String errorCode = this.f24556a;
        Intrinsics.checkNotNullExpressionValue(errorCode, "$errorCode");
        return Short.valueOf(Short.parseShort(errorCode));
    }
}
