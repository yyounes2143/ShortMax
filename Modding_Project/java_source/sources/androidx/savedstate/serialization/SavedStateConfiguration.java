package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.modules.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateConfiguration.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateConfiguration {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final SavedStateConfiguration DEFAULT = new SavedStateConfiguration(null, 0, false, 7, null);
    private final int classDiscriminatorMode;
    private final boolean encodeDefaults;
    @NotNull
    private final xt.a serializersModule;

    /* compiled from: SavedStateConfiguration.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ SavedStateConfiguration(xt.a aVar, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, i10, z10);
    }

    public final int getClassDiscriminatorMode() {
        return this.classDiscriminatorMode;
    }

    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    @NotNull
    public final xt.a getSerializersModule() {
        return this.serializersModule;
    }

    private SavedStateConfiguration(xt.a aVar, int i10, boolean z10) {
        this.serializersModule = aVar;
        this.classDiscriminatorMode = i10;
        this.encodeDefaults = z10;
    }

    /* synthetic */ SavedStateConfiguration(xt.a aVar, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE : aVar, (i11 & 2) != 0 ? 2 : i10, (i11 & 4) != 0 ? false : z10);
    }

    /* compiled from: SavedStateConfiguration.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Builder {
        private int classDiscriminatorMode;
        private boolean encodeDefaults;
        @NotNull
        private xt.a serializersModule;

        public Builder(@NotNull SavedStateConfiguration configuration) {
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            this.serializersModule = configuration.getSerializersModule();
            this.encodeDefaults = configuration.getEncodeDefaults();
            this.classDiscriminatorMode = configuration.getClassDiscriminatorMode();
        }

        @NotNull
        public final SavedStateConfiguration build$savedstate_release() {
            xt.a aVar;
            aVar = SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE;
            return new SavedStateConfiguration(e.b(aVar, this.serializersModule), this.classDiscriminatorMode, this.encodeDefaults, null);
        }

        public final int getClassDiscriminatorMode() {
            return this.classDiscriminatorMode;
        }

        public final boolean getEncodeDefaults() {
            return this.encodeDefaults;
        }

        @NotNull
        public final xt.a getSerializersModule() {
            return this.serializersModule;
        }

        public final void setClassDiscriminatorMode(int i10) {
            this.classDiscriminatorMode = i10;
        }

        public final void setEncodeDefaults(boolean z10) {
            this.encodeDefaults = z10;
        }

        public final void setSerializersModule(@NotNull xt.a aVar) {
            Intrinsics.checkNotNullParameter(aVar, "<set-?>");
            this.serializersModule = aVar;
        }

        public static /* synthetic */ void getClassDiscriminatorMode$annotations() {
        }

        public static /* synthetic */ void getEncodeDefaults$annotations() {
        }
    }
}
