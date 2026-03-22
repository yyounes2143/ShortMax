package com.facebook.fresco.ui.common;

import android.net.Uri;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ControllerListener2.kt */
@Metadata
/* loaded from: classes3.dex */
public interface ControllerListener2<INFO> {

    /* compiled from: ControllerListener2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Extras {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        public Object callerContext;
        @Nullable
        public Map<String, ? extends Object> componentExtras;
        @Nullable
        public Map<String, ? extends Object> datasourceExtras;
        @Nullable
        public Float focusX;
        @Nullable
        public Float focusY;
        @Nullable
        public Map<String, ? extends Object> imageExtras;
        @Nullable
        public Map<String, ? extends Object> imageSourceExtras;
        public boolean logWithHighSamplingRate;
        @Nullable
        public Uri mainUri;
        @Nullable
        public String modifiedUriStatus;
        @Nullable
        public Uri originalUri;
        @Nullable
        public Object scaleType;
        @Nullable
        public Map<String, ? extends Object> shortcutExtras;
        @Nullable
        public String uiFramework;
        public int viewportWidth = -1;
        public int viewportHeight = -1;

        /* compiled from: ControllerListener2.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nControllerListener2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControllerListener2.kt\ncom/facebook/fresco/ui/common/ControllerListener2$Extras$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"})
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final Map<String, Object> copyMap(Map<String, ? extends Object> map) {
                if (map != null) {
                    return new ConcurrentHashMap(map);
                }
                return null;
            }

            @NotNull
            public final Extras of(@Nullable Map<String, ? extends Object> map) {
                Extras extras = new Extras();
                extras.componentExtras = map;
                return extras;
            }

            private Companion() {
            }
        }

        @NotNull
        public static final Extras of(@Nullable Map<String, ? extends Object> map) {
            return Companion.of(map);
        }

        @NotNull
        public final Extras makeExtrasCopy() {
            Extras extras = new Extras();
            Companion companion = Companion;
            extras.componentExtras = companion.copyMap(this.componentExtras);
            extras.shortcutExtras = companion.copyMap(this.shortcutExtras);
            extras.datasourceExtras = companion.copyMap(this.datasourceExtras);
            extras.imageExtras = companion.copyMap(this.imageExtras);
            extras.callerContext = this.callerContext;
            extras.mainUri = this.mainUri;
            extras.viewportWidth = this.viewportWidth;
            extras.viewportHeight = this.viewportHeight;
            extras.scaleType = this.scaleType;
            extras.focusX = this.focusX;
            extras.focusY = this.focusY;
            extras.uiFramework = this.uiFramework;
            return extras;
        }
    }

    void onEmptyEvent(@Nullable Object obj);

    void onFailure(@NotNull String str, @Nullable Throwable th2, @Nullable Extras extras);

    void onFinalImageSet(@NotNull String str, @Nullable INFO info, @Nullable Extras extras);

    void onIntermediateImageFailed(@NotNull String str);

    void onIntermediateImageSet(@NotNull String str, @Nullable INFO info);

    void onRelease(@NotNull String str, @Nullable Extras extras);

    void onSubmit(@NotNull String str, @Nullable Object obj, @Nullable Extras extras);
}
