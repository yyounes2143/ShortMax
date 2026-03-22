package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.o  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3088o extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f25071a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C3072n f25072b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3088o(Context context, C3072n c3072n) {
        super(0);
        this.f25071a = context;
        this.f25072b = c3072n;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f25071a.unregisterReceiver(this.f25072b);
        return Unit.f60915a;
    }
}
