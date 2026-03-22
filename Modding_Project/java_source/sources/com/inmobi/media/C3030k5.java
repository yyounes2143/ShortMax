package com.inmobi.media;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
/* renamed from: com.inmobi.media.k5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3030k5 extends kotlin.properties.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3046l5 f24929a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3030k5(EnumC3115pa enumC3115pa, C3046l5 c3046l5) {
        super(enumC3115pa);
        this.f24929a = c3046l5;
    }

    @Override // kotlin.properties.b
    public final void afterChange(KProperty property, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(property, "property");
        EnumC3115pa enumC3115pa = (EnumC3115pa) obj2;
        if (AbstractC3131qa.a((EnumC3115pa) obj) != AbstractC3131qa.a(enumC3115pa)) {
            Iterator it = this.f24929a.f24955b.iterator();
            while (it.hasNext()) {
                ((InterfaceC3162sa) it.next()).a(enumC3115pa);
            }
        }
    }
}
