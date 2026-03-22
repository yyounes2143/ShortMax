package androidx.compose.runtime.tooling;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComposeStackTrace.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposeStackTrace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeStackTrace.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,134:1\n2632#2,3:135\n1#3:138\n34#4,5:139\n34#4,5:144\n*S KotlinDebug\n*F\n+ 1 ComposeStackTrace.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceKt\n*L\n39#1:135,3\n66#1:139,5\n128#1:144,5\n*E\n"})
/* loaded from: classes.dex */
public final class ComposeStackTraceKt {
    private static final boolean IncludeDebugInfo = false;
    @NotNull
    private static final String RuntimePackageHash = "9igjgp";

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void appendStackTrace(@org.jetbrains.annotations.NotNull java.lang.StringBuilder r12, @org.jetbrains.annotations.NotNull java.util.List<androidx.compose.runtime.tooling.ComposeStackTraceFrame> r13) {
        /*
            java.util.List r0 = kotlin.collections.CollectionsKt.c()
            java.util.List r13 = kotlin.collections.CollectionsKt.Y(r13)
            r1 = r13
            java.util.Collection r1 = (java.util.Collection) r1
            int r1 = r1.size()
            r2 = 0
            r3 = 0
            r5 = r2
            r6 = r5
            r4 = r3
        L14:
            if (r4 >= r1) goto Lc7
            java.lang.Object r7 = r13.get(r4)
            androidx.compose.runtime.tooling.ComposeStackTraceFrame r7 = (androidx.compose.runtime.tooling.ComposeStackTraceFrame) r7
            androidx.compose.runtime.tooling.SourceInformation r8 = r7.getSourceInfo()
            java.lang.String r9 = r8.getFunctionName()
            if (r9 != 0) goto L37
            boolean r9 = r8.isCall()
            if (r9 == 0) goto L2f
            java.lang.String r9 = "<lambda>"
            goto L30
        L2f:
            r9 = r2
        L30:
            if (r9 != 0) goto L37
            if (r5 != 0) goto L38
            java.lang.String r5 = "<unknown function>"
            goto L38
        L37:
            r5 = r9
        L38:
            java.lang.String r9 = r8.getSourceFile()
            if (r9 != 0) goto L43
            if (r6 != 0) goto L44
            java.lang.String r6 = "<unknown file>"
            goto L44
        L43:
            r6 = r9
        L44:
            java.util.List r9 = r8.getLocations()
            java.lang.Integer r10 = r7.getGroupOffset()
            if (r10 == 0) goto L73
            java.lang.Integer r10 = r7.getGroupOffset()
            int r10 = r10.intValue()
            int r11 = r9.size()
            if (r10 >= r11) goto L73
            java.lang.Integer r7 = r7.getGroupOffset()
            int r7 = r7.intValue()
            java.lang.Object r7 = r9.get(r7)
            androidx.compose.runtime.tooling.LocationSourceInformation r7 = (androidx.compose.runtime.tooling.LocationSourceInformation) r7
            int r7 = r7.getLineNumber()
            java.lang.String r7 = java.lang.String.valueOf(r7)
            goto L75
        L73:
            java.lang.String r7 = "<unknown line>"
        L75:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r5)
            r10 = 40
            r9.append(r10)
            r9.append(r6)
            r10 = 58
            r9.append(r10)
            r9.append(r7)
            r7 = 41
            r9.append(r7)
            java.lang.String r7 = r9.toString()
            java.lang.String r9 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r9)
            boolean r9 = r8.isCall()
            if (r9 != 0) goto La7
            java.lang.Object r9 = kotlin.collections.CollectionsKt.S(r0)
            java.lang.String r9 = (java.lang.String) r9
        La7:
            java.lang.String r9 = r8.getFunctionName()
            java.lang.String r10 = "rememberCompositionContext"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto Lc0
            java.lang.String r8 = r8.getPackageHash()
            java.lang.String r9 = "9igjgp"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            if (r8 == 0) goto Lc0
            goto Lc3
        Lc0:
            r0.add(r7)
        Lc3:
            int r4 = r4 + 1
            goto L14
        Lc7:
            java.util.List r13 = kotlin.collections.CollectionsKt.a(r0)
            java.util.List r13 = kotlin.collections.CollectionsKt.Y(r13)
            r0 = r13
            java.util.Collection r0 = (java.util.Collection) r0
            int r0 = r0.size()
        Ld6:
            if (r3 >= r0) goto L102
            java.lang.Object r1 = r13.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "\tat "
            r2.append(r4)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r12.append(r1)
            java.lang.String r1 = "append(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            r2 = 10
            r12.append(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            int r3 = r3 + 1
            goto Ld6
        L102:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.tooling.ComposeStackTraceKt.appendStackTrace(java.lang.StringBuilder, java.util.List):void");
    }

    @NotNull
    public static final Throwable attachComposeStackTrace(@NotNull Throwable th2, @NotNull Function0<? extends List<ComposeStackTraceFrame>> function0) {
        tryAttachComposeStackTrace(th2, function0);
        return th2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(3:17|(2:18|(2:20|(1:22)))|11)|5|6|(1:8)(1:14)|(1:10)(0)|11) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean tryAttachComposeStackTrace(@org.jetbrains.annotations.NotNull java.lang.Throwable r3, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends java.util.List<androidx.compose.runtime.tooling.ComposeStackTraceFrame>> r4) {
        /*
            java.util.List r0 = ms.d.b(r3)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            if (r1 == 0) goto L15
            r1 = r0
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L15
            goto L2a
        L15:
            java.util.Iterator r0 = r0.iterator()
        L19:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L2a
            java.lang.Object r1 = r0.next()
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            boolean r1 = r1 instanceof androidx.compose.runtime.tooling.DiagnosticComposeException
            if (r1 == 0) goto L19
            goto L4b
        L2a:
            java.lang.Object r4 = r4.invoke()     // Catch: java.lang.Throwable -> L41
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L41
            r0 = r4
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: java.lang.Throwable -> L41
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L41
            r2 = r0 ^ 1
            if (r0 != 0) goto L43
            androidx.compose.runtime.tooling.DiagnosticComposeException r0 = new androidx.compose.runtime.tooling.DiagnosticComposeException     // Catch: java.lang.Throwable -> L41
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L41
            goto L46
        L41:
            r4 = move-exception
            goto L45
        L43:
            r0 = 0
            goto L46
        L45:
            r0 = r4
        L46:
            if (r0 == 0) goto L4b
            ms.d.a(r3, r0)
        L4b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.tooling.ComposeStackTraceKt.tryAttachComposeStackTrace(java.lang.Throwable, kotlin.jvm.functions.Function0):boolean");
    }
}
