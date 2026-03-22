package com.bykv.vk.openvk.preload.geckox.c;

import com.bykv.vk.openvk.preload.a.d.c;
import com.bykv.vk.openvk.preload.a.m;
import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;
/* compiled from: BooleanTypeAdapter.java */
/* loaded from: classes3.dex */
public final class a extends r<Boolean> {

    /* compiled from: BooleanTypeAdapter.java */
    /* renamed from: com.bykv.vk.openvk.preload.geckox.c.a$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11373a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f11373a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11373a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11373a[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final /* synthetic */ void a(c cVar, Boolean bool) throws IOException {
        Boolean bool2 = bool;
        if (bool2 == null) {
            cVar.h();
        } else {
            cVar.a(bool2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f10 = aVar.f();
        int i10 = AnonymousClass1.f11373a[f10.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                aVar.j();
                return null;
            } else if (i10 == 3) {
                return Boolean.valueOf(aVar.m() != 0);
            } else {
                throw new m("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(f10)));
            }
        }
        return Boolean.valueOf(aVar.i());
    }
}
