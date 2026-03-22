package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposedModifier.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class KeyedComposedModifier2 extends ComposedModifier {
    @NotNull
    private final String fqName;
    @Nullable
    private final Object key1;
    @Nullable
    private final Object key2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyedComposedModifier2(@NotNull String fqName, @Nullable Object obj, @Nullable Object obj2, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo, factory);
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.fqName = fqName;
        this.key1 = obj;
        this.key2 = obj2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof KeyedComposedModifier2) {
            KeyedComposedModifier2 keyedComposedModifier2 = (KeyedComposedModifier2) obj;
            if (Intrinsics.areEqual(this.fqName, keyedComposedModifier2.fqName) && Intrinsics.areEqual(this.key1, keyedComposedModifier2.key1) && Intrinsics.areEqual(this.key2, keyedComposedModifier2.key2)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final String getFqName() {
        return this.fqName;
    }

    @Nullable
    public final Object getKey1() {
        return this.key1;
    }

    @Nullable
    public final Object getKey2() {
        return this.key2;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.fqName.hashCode() * 31;
        Object obj = this.key1;
        int i11 = 0;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        Object obj2 = this.key2;
        if (obj2 != null) {
            i11 = obj2.hashCode();
        }
        return i12 + i11;
    }
}
