package sc;

import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import vc.h;
/* compiled from: RefreshComponent.java */
/* loaded from: classes6.dex */
public interface a extends h {
    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void a(@NonNull f fVar, int i10, int i11);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    int c(@NonNull f fVar, boolean z10);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void e(float f10, int i10, int i11);

    boolean f();

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void g(@NonNull f fVar, int i10, int i11);

    @NonNull
    tc.b getSpinnerStyle();

    @NonNull
    View getView();

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void h(@NonNull e eVar, int i10, int i11);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void i(boolean z10, float f10, int i10, int i11, int i12);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void setPrimaryColors(@ColorInt int... iArr);
}
