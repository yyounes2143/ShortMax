package com.moloco.sdk.internal.services.bidtoken.providers;

import com.moloco.sdk.internal.services.bidtoken.providers.m;
import com.moloco.sdk.publisher.privacy.InternalMolocoPrivacySettingsImpl;
import com.moloco.sdk.service_locator.b;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface m extends j<k> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f33219a = a.f33220a;

    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f33220a = new a();

        public static final com.moloco.sdk.internal.ilrd.e b() {
            return b.C0494b.f33623a.g().c();
        }

        @NotNull
        public final m a() {
            x xVar = new x();
            com.moloco.sdk.service_locator.b bVar = com.moloco.sdk.service_locator.b.f33619a;
            w wVar = new w(new com.moloco.sdk.internal.services.bidtoken.v(new InternalMolocoPrivacySettingsImpl(bVar.a())));
            b.h hVar = b.h.f33655a;
            t tVar = new t(hVar.c());
            e eVar = new e(bVar.a());
            v vVar = new v(b.i.f33662a.b());
            b.e eVar2 = b.e.f33636a;
            return new n(CollectionsKt.q(xVar, wVar, tVar, eVar, vVar, new i(eVar2.j()), new c(hVar.d()), new p(eVar2.l(), eVar2.m()), new g(eVar2.i()), new b(eVar2.g()), new r(new Function0() { // from class: com.moloco.sdk.internal.services.bidtoken.providers.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.a.b();
                }
            })));
        }
    }
}
