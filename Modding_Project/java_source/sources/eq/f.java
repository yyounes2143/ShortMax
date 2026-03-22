package eq;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final float f51532a;

    /* renamed from: b  reason: collision with root package name */
    private final float f51533b;

    /* renamed from: c  reason: collision with root package name */
    private final float f51534c;

    public f(float f10, float f11, float f12) {
        this.f51532a = f10;
        this.f51533b = f11;
        this.f51534c = f12;
    }

    public final float a() {
        return this.f51532a;
    }

    public final float b() {
        return this.f51533b;
    }

    public final float c() {
        return this.f51534c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (Float.compare(this.f51532a, fVar.f51532a) == 0 && Float.compare(this.f51533b, fVar.f51533b) == 0 && Float.compare(this.f51534c, fVar.f51534c) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Float.hashCode(this.f51532a) * 31) + Float.hashCode(this.f51533b)) * 31) + Float.hashCode(this.f51534c);
    }

    @NotNull
    public String toString() {
        return "AdAnimationValues(alpha=" + this.f51532a + ", translationX=" + this.f51533b + ", translationY=" + this.f51534c + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull View view) {
        this(view.getAlpha(), view.getTranslationX(), view.getTranslationY());
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
