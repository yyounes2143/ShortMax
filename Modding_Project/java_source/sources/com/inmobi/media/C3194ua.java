package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ua  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3194ua extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final C2976h f25323d;

    /* renamed from: e  reason: collision with root package name */
    public final C3248y0 f25324e;

    /* renamed from: f  reason: collision with root package name */
    public InMobiAdRequestStatus f25325f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f25326g;

    /* renamed from: h  reason: collision with root package name */
    public final WeakReference f25327h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3194ua(S0 adUnit, C2976h ad2, C3248y0 adSet, InMobiAdRequestStatus status, InterfaceC3269z5 interfaceC3269z5) {
        super(adUnit, (byte) 1);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f25323d = ad2;
        this.f25324e = adSet;
        this.f25325f = status;
        this.f25326g = interfaceC3269z5;
        this.f25327h = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        a(((Boolean) obj).booleanValue());
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        this.f25325f = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY);
        a(false);
    }

    public final void a(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25326g;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("ParseAdResponseWorker", "onComplete result - " + z10);
        }
        S0 s02 = (S0) this.f25327h.get();
        if (s02 != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25326g;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("ParseAdResponseWorker", "updating vitals in logger");
            }
            s02.a(z10, this.f25325f);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25326g;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).b("ParseAdResponseWorker", "onComplete - adunit is null");
        }
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25326g;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("ParseAdResponseWorker", "execute task");
        }
        S0 s02 = (S0) this.f25327h.get();
        if (s02 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25326g;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("ParseAdResponseWorker", "adUnit is null. fail.");
            }
            b(Boolean.FALSE);
        } else if (this.f25324e.n()) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25326g;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).c("ParseAdResponseWorker", "parsing for ad pods");
            }
            LinkedList<C2976h> f10 = this.f25324e.f();
            C2976h first = f10.getFirst();
            Intrinsics.checkNotNull(first);
            if (s02.a(first, 0, true)) {
                InterfaceC3269z5 interfaceC3269z54 = this.f25326g;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).c("ParseAdResponseWorker", "parse success for ad index 0");
                }
                ListIterator<C2976h> listIterator = f10.listIterator(1);
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    C2976h next = listIterator.next();
                    if (!s02.a(next, f10.indexOf(next), false)) {
                        InterfaceC3269z5 interfaceC3269z55 = this.f25326g;
                        if (interfaceC3269z55 != null) {
                            ((A5) interfaceC3269z55).b("ParseAdResponseWorker", "parseAdResponse fail for index - " + f10.indexOf(next));
                        }
                        listIterator.remove();
                    } else {
                        InterfaceC3269z5 interfaceC3269z56 = this.f25326g;
                        if (interfaceC3269z56 != null) {
                            ((A5) interfaceC3269z56).c("ParseAdResponseWorker", "parseAdResponse success for index - " + f10.indexOf(next));
                        }
                    }
                }
                b(Boolean.TRUE);
                return;
            }
            InterfaceC3269z5 interfaceC3269z57 = this.f25326g;
            if (interfaceC3269z57 != null) {
                ((A5) interfaceC3269z57).b("ParseAdResponseWorker", "didParseAdResponseAndExtractData failed");
            }
            b(Boolean.FALSE);
        } else {
            InterfaceC3269z5 interfaceC3269z58 = this.f25326g;
            if (interfaceC3269z58 != null) {
                ((A5) interfaceC3269z58).c("ParseAdResponseWorker", "parsing for single ad");
            }
            b(Boolean.valueOf(s02.a(this.f25323d, 0, true)));
        }
    }
}
