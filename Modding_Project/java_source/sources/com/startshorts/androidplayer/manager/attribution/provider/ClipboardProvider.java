package com.startshorts.androidplayer.manager.attribution.provider;

import com.startshorts.androidplayer.manager.attribution.CampaignType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClipboardProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nClipboardProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,55:1\n116#2,11:56\n*S KotlinDebug\n*F\n+ 1 ClipboardProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider\n*L\n28#1:56,11\n*E\n"})
/* loaded from: classes6.dex */
public final class ClipboardProvider extends BaseCampaignProvider {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f42017h = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final qt.a f42018g = qt.d.b(false, 1, null);

    /* compiled from: ClipboardProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.CLIPBOARD;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:13:0x0033, B:38:0x009b, B:40:0x00c2, B:41:0x00c5), top: B:46:0x0033 }] */
    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object l(@org.jetbrains.annotations.NotNull android.content.Context r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r9 = r10 instanceof com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$1
            if (r9 == 0) goto L13
            r9 = r10
            com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$1 r9 = (com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$1) r9
            int r0 = r9.f42023l
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r9.f42023l = r0
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$1 r9 = new com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$1
            r9.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r9.f42021j
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r9.f42023l
            java.lang.String r2 = "CampaignNewTag"
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L4f
            if (r1 == r4) goto L42
            if (r1 != r3) goto L3a
            java.lang.Object r0 = r9.f42020i
            qt.a r0 = (qt.a) r0
            java.lang.Object r9 = r9.f42019h
            com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider r9 = (com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider) r9
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L37
            goto L9b
        L37:
            r9 = move-exception
            goto Lcd
        L3a:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L42:
            java.lang.Object r1 = r9.f42020i
            qt.a r1 = (qt.a) r1
            java.lang.Object r6 = r9.f42019h
            com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider r6 = (com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider) r6
            kotlin.f.b(r10)
            r10 = r1
            goto L69
        L4f:
            kotlin.f.b(r10)
            com.startshorts.androidplayer.log.Logger r10 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r1 = "queryInternal ClipboardProvider"
            r10.e(r2, r1)
            qt.a r10 = r8.f42018g
            r9.f42019h = r8
            r9.f42020i = r10
            r9.f42023l = r4
            java.lang.Object r1 = r10.lock(r5, r9)
            if (r1 != r0) goto L68
            return r0
        L68:
            r6 = r8
        L69:
            java.lang.String r1 = r6.c()     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L7f
            int r1 = r1.length()     // Catch: java.lang.Throwable -> L7c
            if (r1 != 0) goto L76
            goto L7f
        L76:
            kotlin.Unit r9 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L7c
            r10.unlock(r5)
            return r9
        L7c:
            r9 = move-exception
            r0 = r10
            goto Lcd
        L7f:
            r6.f()     // Catch: java.lang.Throwable -> L7c
            gt.j1 r1 = gt.q0.c()     // Catch: java.lang.Throwable -> L7c
            com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$2$clipboardInfo$1 r7 = new com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$2$clipboardInfo$1     // Catch: java.lang.Throwable -> L7c
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L7c
            r9.f42019h = r6     // Catch: java.lang.Throwable -> L7c
            r9.f42020i = r10     // Catch: java.lang.Throwable -> L7c
            r9.f42023l = r3     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r9 = gt.e.g(r1, r7, r9)     // Catch: java.lang.Throwable -> L7c
            if (r9 != r0) goto L98
            return r0
        L98:
            r0 = r10
            r10 = r9
            r9 = r6
        L9b:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L37
            r1 = 0
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider.i(r9, r1, r4, r5)     // Catch: java.lang.Throwable -> L37
            r9.o()     // Catch: java.lang.Throwable -> L37
            com.startshorts.androidplayer.log.Logger r1 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Throwable -> L37
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L37
            r3.<init>()     // Catch: java.lang.Throwable -> L37
            java.lang.String r4 = "ClipboardProvider query success -> "
            r3.append(r4)     // Catch: java.lang.Throwable -> L37
            r3.append(r10)     // Catch: java.lang.Throwable -> L37
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L37
            r1.e(r2, r3)     // Catch: java.lang.Throwable -> L37
            com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$a r1 = com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser.f41933d     // Catch: java.lang.Throwable -> L37
            boolean r1 = r1.a(r10)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto Lc5
            r9.n(r10)     // Catch: java.lang.Throwable -> L37
        Lc5:
            kotlin.Unit r9 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L37
            r0.unlock(r5)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        Lcd:
            r0.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider.l(android.content.Context, rs.c):java.lang.Object");
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "ClipboardProvider";
    }
}
