package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortRatingFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class s implements IImmersionFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f42661a;

    /* compiled from: ShortRatingFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a();

        void onRelease();
    }

    /* compiled from: ShortRatingFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        a aVar;
        Intrinsics.checkNotNullParameter(message, "message");
        if (b.$EnumSwitchMapping$0[message.b().ordinal()] == 1 && (aVar = this.f42661a) != null) {
            aVar.a();
        }
    }

    public final void b(@Nullable a aVar) {
        this.f42661a = aVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        a aVar = this.f42661a;
        if (aVar != null) {
            aVar.onRelease();
        }
        this.f42661a = null;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.SHORT_RATING;
    }
}
