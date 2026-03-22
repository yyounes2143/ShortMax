package androidx.compose.ui.autofill;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Rect;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Autofill.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class AutofillNode {
    private static int previousId;
    @NotNull
    private final List<AutofillType> autofillTypes;
    @Nullable
    private Rect boundingBox;

    /* renamed from: id  reason: collision with root package name */
    private final int f1240id;
    @Nullable
    private final Function1<String, Unit> onFill;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: Autofill.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int generateId() {
            int i10;
            synchronized (this) {
                AutofillNode.previousId++;
                i10 = AutofillNode.previousId;
            }
            return i10;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AutofillNode(@NotNull List<? extends AutofillType> autofillTypes, @Nullable Rect rect, @Nullable Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(autofillTypes, "autofillTypes");
        this.autofillTypes = autofillTypes;
        this.boundingBox = rect;
        this.onFill = function1;
        this.f1240id = Companion.generateId();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutofillNode)) {
            return false;
        }
        AutofillNode autofillNode = (AutofillNode) obj;
        if (Intrinsics.areEqual(this.autofillTypes, autofillNode.autofillTypes) && Intrinsics.areEqual(this.boundingBox, autofillNode.boundingBox) && Intrinsics.areEqual(this.onFill, autofillNode.onFill)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<AutofillType> getAutofillTypes() {
        return this.autofillTypes;
    }

    @Nullable
    public final Rect getBoundingBox() {
        return this.boundingBox;
    }

    public final int getId() {
        return this.f1240id;
    }

    @Nullable
    public final Function1<String, Unit> getOnFill() {
        return this.onFill;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.autofillTypes.hashCode() * 31;
        Rect rect = this.boundingBox;
        int i11 = 0;
        if (rect != null) {
            i10 = rect.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        Function1<String, Unit> function1 = this.onFill;
        if (function1 != null) {
            i11 = function1.hashCode();
        }
        return i12 + i11;
    }

    public final void setBoundingBox(@Nullable Rect rect) {
        this.boundingBox = rect;
    }

    public /* synthetic */ AutofillNode(List list, Rect rect, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? null : rect, function1);
    }
}
