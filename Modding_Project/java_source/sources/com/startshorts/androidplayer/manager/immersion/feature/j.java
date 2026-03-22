package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.dns.DomainIpInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpDNSFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpDNSFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/HttpDNSFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1755#2,3:87\n1863#2,2:90\n*S KotlinDebug\n*F\n+ 1 HttpDNSFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/HttpDNSFeature\n*L\n30#1:87,3\n64#1:90,2\n*E\n"})
/* loaded from: classes6.dex */
public final class j implements IImmersionFeature {

    /* renamed from: a  reason: collision with root package name */
    private boolean f42618a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f42619b = kotlin.c.b(new Function0() { // from class: hf.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List k10;
            k10 = com.startshorts.androidplayer.manager.immersion.feature.j.k();
            return k10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ms.i f42620c = kotlin.c.b(new Function0() { // from class: hf.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashSet j10;
            j10 = com.startshorts.androidplayer.manager.immersion.feature.j.j();
            return j10;
        }
    });

    /* compiled from: HttpDNSFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_RENDER_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final HashSet<String> h() {
        return (HashSet) this.f42620c.getValue();
    }

    private final List<BaseEpisode> i() {
        return (List) this.f42619b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashSet j() {
        return new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List k() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l(BaseEpisode baseEpisode, BaseEpisode it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (baseEpisode.getId() == it.getId()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence n(DomainIpInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getDomain() + '_' + it.getIps();
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = a.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (i().isEmpty()) {
                        return;
                    }
                    for (BaseEpisode baseEpisode : i()) {
                        EventManager eventManager = EventManager.f42463a;
                        Bundle C = eventManager.C(baseEpisode);
                        C.putString("ip_list", CollectionsKt.A0(HttpDNSIPPools.f41818a.d(), ",", null, null, 0, null, new Function1() { // from class: hf.p
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                CharSequence n10;
                                n10 = com.startshorts.androidplayer.manager.immersion.feature.j.n((DomainIpInfo) obj2);
                                return n10;
                            }
                        }, 30, null));
                        C.putString("err_code", CollectionsKt.A0(h(), ",", null, null, 0, null, null, 62, null));
                        Unit unit = Unit.f60915a;
                        EventManager.s0(eventManager, "http_dns_replay_video_failed", C, 0L, 4, null);
                    }
                }
                return;
            }
            final BaseEpisode g10 = g(message);
            if (g10 == null) {
                return;
            }
            List<BaseEpisode> i11 = i();
            final Function1 function1 = new Function1() { // from class: hf.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    boolean l10;
                    l10 = com.startshorts.androidplayer.manager.immersion.feature.j.l(BaseEpisode.this, (BaseEpisode) obj2);
                    return Boolean.valueOf(l10);
                }
            };
            boolean removeIf = i11.removeIf(new Predicate() { // from class: hf.o
                @Override // java.util.function.Predicate
                public final boolean test(Object obj2) {
                    boolean m10;
                    m10 = com.startshorts.androidplayer.manager.immersion.feature.j.m(Function1.this, obj2);
                    return m10;
                }
            });
            this.f42618a = removeIf;
            if (removeIf) {
                EventManager eventManager2 = EventManager.f42463a;
                Bundle C2 = eventManager2.C(g10);
                C2.putString("err_code", CollectionsKt.A0(h(), ",", null, null, 0, null, null, 62, null));
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "http_dns_replay_video_succeed", C2, 0L, 4, null);
                return;
            }
            return;
        }
        BaseEpisode g11 = g(message);
        if (g11 == null) {
            return;
        }
        List<BaseEpisode> i12 = i();
        if (!(i12 instanceof Collection) || !i12.isEmpty()) {
            for (BaseEpisode baseEpisode2 : i12) {
                if (baseEpisode2.getId() == g11.getId()) {
                    return;
                }
            }
        }
        HashMap<String, Object> a10 = message.a();
        String str = null;
        if (a10 != null) {
            obj = a10.get("err_code");
        } else {
            obj = null;
        }
        if (obj instanceof String) {
            str = (String) obj;
        }
        if (str != null && mf.b.f62506a.c(str)) {
            h().add(str);
            i().add(g11);
            EventManager eventManager3 = EventManager.f42463a;
            Bundle C3 = eventManager3.C(g11);
            C3.putString("err_code", str);
            Unit unit3 = Unit.f60915a;
            EventManager.s0(eventManager3, "http_dns_replay_video_start", C3, 0L, 4, null);
        }
    }

    @Nullable
    public BaseEpisode g(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.HTTP_DNS;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
