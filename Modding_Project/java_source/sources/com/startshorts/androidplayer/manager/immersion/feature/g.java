package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DailyWatchDramaTaskCoinFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g implements IImmersionFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f42607a;

    /* compiled from: DailyWatchDramaTaskCoinFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
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
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PLAYING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        a aVar;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = b.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3 && (aVar = this.f42607a) != null) {
                    aVar.b();
                    return;
                }
                return;
            }
            a aVar2 = this.f42607a;
            if (aVar2 != null) {
                aVar2.c();
                return;
            }
            return;
        }
        a aVar3 = this.f42607a;
        if (aVar3 != null) {
            aVar3.d();
        }
    }

    public final void b(@Nullable a aVar) {
        this.f42607a = aVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        a aVar = this.f42607a;
        if (aVar != null) {
            aVar.onRelease();
        }
        this.f42607a = null;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.TASK_COIN;
    }
}
