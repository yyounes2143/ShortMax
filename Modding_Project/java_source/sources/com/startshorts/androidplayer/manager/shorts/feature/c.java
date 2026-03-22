package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DailyWatchDramaTaskCoinFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c implements IShortsFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f42975a;

    /* compiled from: DailyWatchDramaTaskCoinFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a();

        void b();

        void c();

        void d();

        void onRelease();
    }

    /* compiled from: DailyWatchDramaTaskCoinFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.SWITCH_EPISODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_PLAYING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        a aVar;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = b.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4 && (aVar = this.f42975a) != null) {
                        aVar.a();
                        return;
                    }
                    return;
                }
                a aVar2 = this.f42975a;
                if (aVar2 != null) {
                    aVar2.b();
                    return;
                }
                return;
            }
            a aVar3 = this.f42975a;
            if (aVar3 != null) {
                aVar3.c();
                return;
            }
            return;
        }
        a aVar4 = this.f42975a;
        if (aVar4 != null) {
            aVar4.d();
        }
    }

    public final void b(@Nullable a aVar) {
        this.f42975a = aVar;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
        a aVar = this.f42975a;
        if (aVar != null) {
            aVar.onRelease();
        }
        this.f42975a = null;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.TASK_COIN;
    }
}
