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
final class KeyedComposedModifier3 extends ComposedModifier {
    @NotNull
    private final String fqName;
    @Nullable
    private final Object key1;
    @Nullable
    private final Object key2;
    @Nullable
    private final Object key3;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyedComposedModifier3(@NotNull String fqName, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo, factory);
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.fqName = fqName;
        this.key1 = obj;
        this.key2 = obj2;
        this.key3 = obj3;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof KeyedComposedModifier3) {
            KeyedComposedModifier3 keyedComposedModifier3 = (KeyedComposedModifier3) obj;
            if (Intrinsics.areEqual(this.fqName, keyedComposedModifier3.fqName) && Intrinsics.areEqual(this.key1, keyedComposedModifier3.key1) && Intrinsics.areEqual(this.key2, keyedComposedModifier3.key2) && Intrinsics.areEqual(this.key3, keyedComposedModifier3.key3)) {
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

    @Nullable
    public final Object getKey3() {
        return this.key3;
    }

    public int hashCode() {
        int i10;
        int i11;
        int hashCode = this.fqName.hashCode() * 31;
        Object obj = this.key1;
        int i12 = 0;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (hashCode + i10) * 31;
        Object obj2 = this.key2;
        if (obj2 != null) {
            i11 = obj2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        Object obj3 = this.key3;
        if (obj3 != null) {
            i12 = obj3.hashCode();
        }
        return i14 + i12;
    }
}
