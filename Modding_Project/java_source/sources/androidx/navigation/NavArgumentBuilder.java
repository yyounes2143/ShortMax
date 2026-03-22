package androidx.navigation;

import androidx.navigation.NavArgument;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NavDestinationBuilder.kt */
@NavDestinationDsl
@Metadata
/* loaded from: classes2.dex */
public final class NavArgumentBuilder {
    private NavType<?> _type;
    private final NavArgument.Builder builder = new NavArgument.Builder();
    @Nullable
    private Object defaultValue;
    private boolean nullable;

    @NotNull
    public final NavArgument build() {
        NavArgument build = this.builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "builder.build()");
        return build;
    }

    @Nullable
    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    public final boolean getNullable() {
        return this.nullable;
    }

    @NotNull
    public final NavType<?> getType() {
        NavType<?> navType = this._type;
        if (navType != null) {
            return navType;
        }
        throw new IllegalStateException("NavType has not been set on this builder.");
    }

    public final void setDefaultValue(@Nullable Object obj) {
        this.defaultValue = obj;
        this.builder.setDefaultValue(obj);
    }

    public final void setNullable(boolean z10) {
        this.nullable = z10;
        this.builder.setIsNullable(z10);
    }

    public final void setType(@NotNull NavType<?> value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        this._type = value;
        this.builder.setType(value);
    }
}
