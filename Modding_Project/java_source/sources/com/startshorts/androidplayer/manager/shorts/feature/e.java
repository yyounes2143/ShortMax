package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.manager.shorts.core.ShortsJobsManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import fk.h0;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NextShortsTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e implements IShortsFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42978e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f42979a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42980b = true;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ShortsJobsManager f42981c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42982d;

    /* compiled from: NextShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: NextShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a();

        void b(@NotNull ShortsEpisode shortsEpisode);

        void c(@NotNull ShortsEpisode shortsEpisode);
    }

    /* compiled from: NextShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_TIME_CALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean f(int i10, int i11) {
        if (i10 - i11 <= 5000) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e eVar) {
        b bVar = eVar.f42982d;
        if (bVar != null) {
            bVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(e eVar, ShortsEpisode shortsEpisode) {
        b bVar = eVar.f42982d;
        if (bVar != null) {
            bVar.c(shortsEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(e eVar, ShortsEpisode shortsEpisode) {
        b bVar = eVar.f42982d;
        if (bVar != null) {
            bVar.b(shortsEpisode);
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Object obj;
        Object obj2;
        Integer num;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        ShortsJobsManager shortsJobsManager = null;
        Integer num2 = null;
        if (i10 != 1) {
            if (i10 != 2 || !this.f42980b) {
                return;
            }
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj2 = a10.get("total_time");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof Integer) {
                num = (Integer) obj2;
            } else {
                num = null;
            }
            if (num != null) {
                int intValue = num.intValue();
                Object obj3 = message.a().get("playback_time");
                if (obj3 instanceof Integer) {
                    num2 = (Integer) obj3;
                }
                if (num2 != null) {
                    int intValue2 = num2.intValue();
                    if (this.f42979a) {
                        if (!f(intValue, intValue2)) {
                            this.f42979a = false;
                            ShortsJobsManager shortsJobsManager2 = this.f42981c;
                            if (shortsJobsManager2 != null) {
                                shortsJobsManager2.b(ShortsJobsManager.JobType.NEXT_SHORTS_TIP);
                            }
                            h0.f51735a.e(new Runnable() { // from class: xf.a
                                @Override // java.lang.Runnable
                                public final void run() {
                                    com.startshorts.androidplayer.manager.shorts.feature.e.g(com.startshorts.androidplayer.manager.shorts.feature.e.this);
                                }
                            });
                        } else {
                            return;
                        }
                    }
                    final ShortsEpisode e10 = e(message);
                    if (e10 == null) {
                        return;
                    }
                    if (!e10.isTrailer() && !e10.fromRecommendPool() && e10.isLastEpisode()) {
                        if (!f(intValue, intValue2)) {
                            return;
                        }
                        this.f42979a = true;
                        h0.f51735a.e(new Runnable() { // from class: xf.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                com.startshorts.androidplayer.manager.shorts.feature.e.h(com.startshorts.androidplayer.manager.shorts.feature.e.this, e10);
                            }
                        });
                        ShortsJobsManager shortsJobsManager3 = this.f42981c;
                        if (shortsJobsManager3 != null) {
                            ShortsJobsManager.e(shortsJobsManager3, ShortsJobsManager.JobType.NEXT_SHORTS_TIP, 1000L, null, new Function0() { // from class: xf.c
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    Unit i11;
                                    i11 = com.startshorts.androidplayer.manager.shorts.feature.e.i(com.startshorts.androidplayer.manager.shorts.feature.e.this, e10);
                                    return i11;
                                }
                            }, 4, null);
                            return;
                        }
                        return;
                    }
                    this.f42980b = false;
                    return;
                }
                return;
            }
            return;
        }
        this.f42979a = false;
        this.f42980b = true;
        HashMap<String, Object> a11 = message.a();
        if (a11 != null) {
            obj = a11.get("shorts_job_manager");
        } else {
            obj = null;
        }
        if (obj instanceof ShortsJobsManager) {
            shortsJobsManager = (ShortsJobsManager) obj;
        }
        if (shortsJobsManager == null) {
            return;
        }
        this.f42981c = shortsJobsManager;
        shortsJobsManager.b(ShortsJobsManager.JobType.NEXT_SHORTS_TIP);
    }

    @Nullable
    public ShortsEpisode e(@NotNull i iVar) {
        return IShortsFeature.a.a(this, iVar);
    }

    public final void j(@Nullable b bVar) {
        this.f42982d = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.NEXT_SHORTS_TIP;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
    }
}
