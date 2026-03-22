package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.r8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3144r8 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f25235a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C3160s8 f25236b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3144r8(C3160s8 c3160s8, String str) {
        super(0);
        this.f25235a = str;
        this.f25236b = c3160s8;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3008j b10 = Nc.a().b(this.f25235a);
        I4 i42 = null;
        if (b10 == null) {
            return null;
        }
        C3160s8 c3160s8 = this.f25236b;
        try {
            String str = b10.f24870c;
            if (str == null) {
                return null;
            }
            i42 = C3160s8.a(c3160s8, str);
            Unit unit = Unit.f60915a;
            return i42;
        } catch (Exception e10) {
            Intrinsics.checkNotNullExpressionValue(c3160s8.f25269x, "access$getTAG$p(...)");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            Unit unit2 = Unit.f60915a;
            return i42;
        }
    }
}
