package com.startshorts.androidplayer.manager.attribution.pullup;

import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseCampaignPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class BaseCampaignPullUp implements je.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(2:10|11)(2:17|18))(3:19|20|(1:22))|12|13|14))|25|6|7|(0)(0)|12|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
        r6 = com.startshorts.androidplayer.log.Logger.f41511a;
        r4 = r4.name();
        r6.e(r4, "query exception -> " + r5.getMessage());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object b(com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp r4, android.content.Context r5, java.lang.String r6, java.lang.String r7, rs.c<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp$query$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp$query$1 r0 = (com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp$query$1) r0
            int r1 = r0.f42081k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42081k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp$query$1 r0 = new com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp$query$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f42079i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42081k
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f42078h
            com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp r4 = (com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp) r4
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L2d
            goto L63
        L2d:
            r5 = move-exception
            goto L45
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.f.b(r8)
            r0.f42078h = r4     // Catch: java.lang.Exception -> L2d
            r0.f42081k = r3     // Catch: java.lang.Exception -> L2d
            java.lang.Object r4 = r4.c(r5, r6, r7, r0)     // Catch: java.lang.Exception -> L2d
            if (r4 != r1) goto L63
            return r1
        L45:
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r4 = r4.name()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "query exception -> "
            r7.append(r8)
            java.lang.String r5 = r5.getMessage()
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            r6.e(r4, r5)
        L63:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp.b(com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp, android.content.Context, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    @Nullable
    public Object a(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar) {
        return b(this, context, str, str2, cVar);
    }

    @Nullable
    protected abstract Object c(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar);
}
