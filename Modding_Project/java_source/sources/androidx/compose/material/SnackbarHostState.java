package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import gt.i;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import qt.d;
import rs.c;
/* compiled from: SnackbarHost.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class SnackbarHostState {
    @NotNull
    private final MutableState currentSnackbarData$delegate;
    @NotNull
    private final a mutex = d.b(false, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnackbarHost.kt */
    @Stable
    @Metadata
    /* loaded from: classes.dex */
    public static final class SnackbarDataImpl implements SnackbarData {
        @Nullable
        private final String actionLabel;
        @NotNull
        private final i<SnackbarResult> continuation;
        @NotNull
        private final SnackbarDuration duration;
        @NotNull
        private final String message;

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarDataImpl(@NotNull String message, @Nullable String str, @NotNull SnackbarDuration duration, @NotNull i<? super SnackbarResult> continuation) {
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(duration, "duration");
            Intrinsics.checkNotNullParameter(continuation, "continuation");
            this.message = message;
            this.actionLabel = str;
            this.duration = duration;
            this.continuation = continuation;
        }

        @Override // androidx.compose.material.SnackbarData
        public void dismiss() {
            if (this.continuation.isActive()) {
                i<SnackbarResult> iVar = this.continuation;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(SnackbarResult.Dismissed));
            }
        }

        @Override // androidx.compose.material.SnackbarData
        @Nullable
        public String getActionLabel() {
            return this.actionLabel;
        }

        @Override // androidx.compose.material.SnackbarData
        @NotNull
        public SnackbarDuration getDuration() {
            return this.duration;
        }

        @Override // androidx.compose.material.SnackbarData
        @NotNull
        public String getMessage() {
            return this.message;
        }

        @Override // androidx.compose.material.SnackbarData
        public void performAction() {
            if (this.continuation.isActive()) {
                i<SnackbarResult> iVar = this.continuation;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(SnackbarResult.ActionPerformed));
            }
        }
    }

    public SnackbarHostState() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentSnackbarData$delegate = mutableStateOf$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentSnackbarData(SnackbarData snackbarData) {
        this.currentSnackbarData$delegate.setValue(snackbarData);
    }

    public static /* synthetic */ Object showSnackbar$default(SnackbarHostState snackbarHostState, String str, String str2, SnackbarDuration snackbarDuration, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            snackbarDuration = SnackbarDuration.Short;
        }
        return snackbarHostState.showSnackbar(str, str2, snackbarDuration, cVar);
    }

    @Nullable
    public final SnackbarData getCurrentSnackbarData() {
        return (SnackbarData) this.currentSnackbarData$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6 A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #1 {all -> 0x00ba, blocks: (B:24:0x008a, B:26:0x00b6), top: B:44:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c0  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object showSnackbar(@org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.Nullable java.lang.String r10, @org.jetbrains.annotations.NotNull androidx.compose.material.SnackbarDuration r11, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.material.SnackbarResult> r12) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SnackbarHostState.showSnackbar(java.lang.String, java.lang.String, androidx.compose.material.SnackbarDuration, rs.c):java.lang.Object");
    }
}
