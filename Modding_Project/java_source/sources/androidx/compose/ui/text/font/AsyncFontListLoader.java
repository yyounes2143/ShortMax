package androidx.compose.ui.text.font;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.font.TypefaceResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
/* loaded from: classes.dex */
public final class AsyncFontListLoader implements State<Object> {
    @NotNull
    private final AsyncTypefaceCache asyncTypefaceCache;
    private boolean cacheable;
    @NotNull
    private final List<Font> fontList;
    @NotNull
    private final Function1<TypefaceResult.Immutable, Unit> onCompletion;
    @NotNull
    private final PlatformFontLoader platformFontLoader;
    @NotNull
    private final TypefaceRequest typefaceRequest;
    @NotNull
    private final MutableState value$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    public AsyncFontListLoader(@NotNull List<? extends Font> fontList, @NotNull Object initialType, @NotNull TypefaceRequest typefaceRequest, @NotNull AsyncTypefaceCache asyncTypefaceCache, @NotNull Function1<? super TypefaceResult.Immutable, Unit> onCompletion, @NotNull PlatformFontLoader platformFontLoader) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        Intrinsics.checkNotNullParameter(initialType, "initialType");
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        Intrinsics.checkNotNullParameter(asyncTypefaceCache, "asyncTypefaceCache");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        Intrinsics.checkNotNullParameter(platformFontLoader, "platformFontLoader");
        this.fontList = fontList;
        this.typefaceRequest = typefaceRequest;
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.onCompletion = onCompletion;
        this.platformFontLoader = platformFontLoader;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(initialType, null, 2, null);
        this.value$delegate = mutableStateOf$default;
        this.cacheable = true;
    }

    private void setValue(Object obj) {
        this.value$delegate.setValue(obj);
    }

    public final boolean getCacheable$ui_text_release() {
        return this.cacheable;
    }

    @Override // androidx.compose.runtime.State
    @NotNull
    public Object getValue() {
        return this.value$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00be A[Catch: all -> 0x00f2, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:28:0x0075, B:30:0x008c, B:35:0x00be, B:40:0x00f5), top: B:53:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f5 A[Catch: all -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:28:0x0075, B:30:0x008c, B:35:0x00be, B:40:0x00f5), top: B:53:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0108 -> B:44:0x0109). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x010d -> B:46:0x010f). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object load(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.AsyncFontListLoader.load(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadWithTimeoutOrNull$ui_text_release(@org.jetbrains.annotations.NotNull androidx.compose.ui.text.font.Font r7, @org.jetbrains.annotations.NotNull rs.c<java.lang.Object> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$1 r0 = (androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$1 r0 = new androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r7 = r0.L$0
            androidx.compose.ui.text.font.Font r7 = (androidx.compose.ui.text.font.Font) r7
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            goto L4f
        L2e:
            r8 = move-exception
            goto L51
        L30:
            r7 = move-exception
            goto L7d
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3a:
            kotlin.f.b(r8)
            androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$2 r8 = new androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$2     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            r8.<init>(r6, r7, r4)     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            r0.L$0 = r7     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            r0.label = r3     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            r2 = 15000(0x3a98, double:7.411E-320)
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.e(r2, r8, r0)     // Catch: java.lang.Exception -> L2e java.util.concurrent.CancellationException -> L30
            if (r8 != r1) goto L4f
            return r1
        L4f:
            r4 = r8
            goto L87
        L51:
            kotlin.coroutines.CoroutineContext r1 = r0.getContext()
            gt.d0$b r2 = gt.d0.D8
            kotlin.coroutines.CoroutineContext$Element r1 = r1.get(r2)
            gt.d0 r1 = (gt.d0) r1
            if (r1 == 0) goto L87
            kotlin.coroutines.CoroutineContext r0 = r0.getContext()
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Unable to load font "
            r3.append(r5)
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            r2.<init>(r7, r8)
            r1.handleException(r0, r2)
            goto L87
        L7d:
            kotlin.coroutines.CoroutineContext r8 = r0.getContext()
            boolean r8 = kotlinx.coroutines.t.p(r8)
            if (r8 == 0) goto L88
        L87:
            return r4
        L88:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.AsyncFontListLoader.loadWithTimeoutOrNull$ui_text_release(androidx.compose.ui.text.font.Font, rs.c):java.lang.Object");
    }

    public final void setCacheable$ui_text_release(boolean z10) {
        this.cacheable = z10;
    }
}
