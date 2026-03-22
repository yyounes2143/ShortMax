package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
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
public final class m implements IImmersionFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42633e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f42634a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42635b = true;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ImmersionJobsManager f42636c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42637d;

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

        void b();

        void c(@NotNull BaseEpisode baseEpisode);
    }

    /* compiled from: NextShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_TIME_CALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean g(int i10, int i11) {
        if (i10 - i11 <= 5000) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(m mVar) {
        b bVar = mVar.f42637d;
        if (bVar != null) {
            bVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(m mVar, BaseEpisode baseEpisode) {
        b bVar = mVar.f42637d;
        if (bVar != null) {
            bVar.c(baseEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(m mVar) {
        b bVar = mVar.f42637d;
        if (bVar != null) {
            bVar.b();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        Integer num;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2 || !this.f42635b) {
                return;
            }
            HashMap<String, Object> a10 = message.a();
            Integer num2 = null;
            if (a10 != null) {
                obj = a10.get("total_time");
            } else {
                obj = null;
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            if (num != null) {
                int intValue = num.intValue();
                Object obj2 = message.a().get("playback_time");
                if (obj2 instanceof Integer) {
                    num2 = (Integer) obj2;
                }
                if (num2 != null) {
                    int intValue2 = num2.intValue();
                    if (this.f42634a) {
                        if (!g(intValue, intValue2)) {
                            this.f42634a = false;
                            ImmersionJobsManager immersionJobsManager = this.f42636c;
                            if (immersionJobsManager != null) {
                                immersionJobsManager.b(ImmersionJobsManager.JobType.NEXT_SHORTS_TIP);
                            }
                            h0.f51735a.e(new Runnable() { // from class: hf.t
                                @Override // java.lang.Runnable
                                public final void run() {
                                    com.startshorts.androidplayer.manager.immersion.feature.m.h(com.startshorts.androidplayer.manager.immersion.feature.m.this);
                                }
                            });
                        } else {
                            return;
                        }
                    }
                    final BaseEpisode e10 = e(message);
                    if (e10 == null) {
                        return;
                    }
                    if (!e10.isTrailer() && !e10.isLastEpisode()) {
                        this.f42635b = false;
                        return;
                    } else if (!g(intValue, intValue2)) {
                        return;
                    } else {
                        this.f42634a = true;
                        h0.f51735a.e(new Runnable() { // from class: hf.u
                            @Override // java.lang.Runnable
                            public final void run() {
                                com.startshorts.androidplayer.manager.immersion.feature.m.i(com.startshorts.androidplayer.manager.immersion.feature.m.this, e10);
                            }
                        });
                        ImmersionJobsManager immersionJobsManager2 = this.f42636c;
                        if (immersionJobsManager2 != null) {
                            ImmersionJobsManager.e(immersionJobsManager2, ImmersionJobsManager.JobType.NEXT_SHORTS_TIP, 1000L, null, new Function0() { // from class: hf.v
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    Unit j10;
                                    j10 = com.startshorts.androidplayer.manager.immersion.feature.m.j(com.startshorts.androidplayer.manager.immersion.feature.m.this);
                                    return j10;
                                }
                            }, 4, null);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        this.f42634a = false;
        this.f42635b = true;
        ImmersionJobsManager f10 = f(message);
        if (f10 == null) {
            return;
        }
        this.f42636c = f10;
        f10.b(ImmersionJobsManager.JobType.NEXT_SHORTS_TIP);
    }

    @Nullable
    public BaseEpisode e(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public ImmersionJobsManager f(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    public final void k(@Nullable b bVar) {
        this.f42637d = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.NEXT_SHORTS_TIP;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
