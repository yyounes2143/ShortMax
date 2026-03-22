package com.facebook.fresco.ui.common;

import com.facebook.fresco.ui.common.ControllerListener2;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseControllerListener2.kt */
@Metadata
/* loaded from: classes3.dex */
public class BaseControllerListener2<INFO> implements ControllerListener2<INFO> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ControllerListener2<?> NO_OP_LISTENER = new BaseControllerListener2();

    /* compiled from: BaseControllerListener2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <I> ControllerListener2<I> getNoOpListener() {
            ControllerListener2<I> controllerListener2 = BaseControllerListener2.NO_OP_LISTENER;
            Intrinsics.checkNotNull(controllerListener2, "null cannot be cast to non-null type com.facebook.fresco.ui.common.ControllerListener2<I of com.facebook.fresco.ui.common.BaseControllerListener2.Companion.getNoOpListener>");
            return controllerListener2;
        }

        private Companion() {
        }
    }

    @NotNull
    public static final <I> ControllerListener2<I> getNoOpListener() {
        return Companion.getNoOpListener();
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onFailure(@NotNull String id2, @Nullable Throwable th2, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onFinalImageSet(@NotNull String id2, @Nullable INFO info, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onIntermediateImageFailed(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onIntermediateImageSet(@NotNull String id2, @Nullable INFO info) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onRelease(@NotNull String id2, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onSubmit(@NotNull String id2, @Nullable Object obj, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    @Override // com.facebook.fresco.ui.common.ControllerListener2
    public void onEmptyEvent(@Nullable Object obj) {
    }
}
