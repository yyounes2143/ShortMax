package com.facebook.fresco.ui.common;

import android.util.Log;
import com.facebook.fresco.ui.common.ControllerListener2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ForwardingControllerListener2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nForwardingControllerListener2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingControllerListener2.kt\ncom/facebook/fresco/ui/common/ForwardingControllerListener2\n*L\n1#1,84:1\n35#1,16:85\n35#1,16:101\n35#1,16:117\n35#1,16:133\n35#1,16:149\n35#1,16:165\n35#1,16:181\n*S KotlinDebug\n*F\n+ 1 ForwardingControllerListener2.kt\ncom/facebook/fresco/ui/common/ForwardingControllerListener2\n*L\n53#1:85,16\n57#1:101,16\n61#1:117,16\n65#1:133,16\n69#1:149,16\n73#1:165,16\n77#1:181,16\n*E\n"})
/* loaded from: classes3.dex */
public class ForwardingControllerListener2<I> extends BaseControllerListener2<I> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "FwdControllerListener2";
    @NotNull
    private final List<ControllerListener2<I>> listeners = new ArrayList(2);

    /* compiled from: ForwardingControllerListener2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void forEachListener(String str, Function1<? super ControllerListener2<I>, Unit> function1) {
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    function1.invoke(this.listeners.get(i10));
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in " + str, e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    public final synchronized void addListener(@NotNull ControllerListener2<I> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onEmptyEvent(@Nullable Object obj) {
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    this.listeners.get(i10).onEmptyEvent(obj);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onEmptyEvent", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onFailure(@NotNull String id2, @Nullable Throwable th2, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    this.listeners.get(i10).onFailure(id2, th2, extras);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onFailure", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onFinalImageSet(@NotNull String id2, @Nullable I i10, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i11 = 0; i11 < size; i11++) {
            try {
                try {
                    this.listeners.get(i11).onFinalImageSet(id2, i10, extras);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onFinalImageSet", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onIntermediateImageFailed(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    this.listeners.get(i10).onIntermediateImageFailed(id2);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onIntermediateImageFailed", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onIntermediateImageSet(@NotNull String id2, @Nullable I i10) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i11 = 0; i11 < size; i11++) {
            try {
                try {
                    this.listeners.get(i11).onIntermediateImageSet(id2, i10);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onIntermediateImageSet", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onRelease(@NotNull String id2, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    this.listeners.get(i10).onRelease(id2, extras);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onRelease", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onSubmit(@NotNull String id2, @Nullable Object obj, @Nullable ControllerListener2.Extras extras) {
        Intrinsics.checkNotNullParameter(id2, "id");
        int size = this.listeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                try {
                    this.listeners.get(i10).onSubmit(id2, obj, extras);
                    Unit unit = Unit.f60915a;
                } catch (Exception e10) {
                    Log.e(TAG, "InternalListener exception in onSubmit", e10);
                }
            } catch (IndexOutOfBoundsException unused) {
                return;
            }
        }
    }

    public final synchronized void removeAllListeners() {
        this.listeners.clear();
    }

    public final synchronized void removeListener(@NotNull ControllerListener2<I> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }
}
