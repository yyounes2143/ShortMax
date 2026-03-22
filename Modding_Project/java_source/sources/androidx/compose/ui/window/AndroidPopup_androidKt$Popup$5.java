package androidx.compose.ui.window;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidPopup.android.kt */
@Metadata
@d(c = "androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5", f = "AndroidPopup.android.kt", l = {299}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$5 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ PopupLayout $popupLayout;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPopup_androidKt$Popup$5(PopupLayout popupLayout, c<? super AndroidPopup_androidKt$Popup$5> cVar) {
        super(2, cVar);
        this.$popupLayout = popupLayout;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidPopup_androidKt$Popup$5 androidPopup_androidKt$Popup$5 = new AndroidPopup_androidKt$Popup$5(this.$popupLayout, cVar);
        androidPopup_androidKt$Popup$5.L$0 = obj;
        return androidPopup_androidKt$Popup$5;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidPopup_androidKt$Popup$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0033 -> B:14:0x0036). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L1b
            if (r1 != r2) goto L13
            java.lang.Object r1 = r3.L$0
            gt.g0 r1 = (gt.g0) r1
            kotlin.f.b(r4)
            goto L36
        L13:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L1b:
            kotlin.f.b(r4)
            java.lang.Object r4 = r3.L$0
            gt.g0 r4 = (gt.g0) r4
            r1 = r4
        L23:
            boolean r4 = kotlinx.coroutines.i.h(r1)
            if (r4 == 0) goto L3c
            androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1 r4 = new kotlin.jvm.functions.Function1<java.lang.Long, kotlin.Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.1
                static {
                    /*
                        androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1 r0 = new androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1) androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.1.INSTANCE androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.AnonymousClass1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.AnonymousClass1.<init>():void");
                }

                public final void invoke(long r1) {
                    /*
                        r0 = this;
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.AnonymousClass1.invoke(long):void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.Unit invoke(java.lang.Long r3) {
                    /*
                        r2 = this;
                        java.lang.Number r3 = (java.lang.Number) r3
                        long r0 = r3.longValue()
                        r2.invoke(r0)
                        kotlin.Unit r3 = kotlin.Unit.f60915a
                        return r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.AnonymousClass1.invoke(java.lang.Object):java.lang.Object");
                }
            }
            r3.L$0 = r1
            r3.label = r2
            java.lang.Object r4 = androidx.compose.ui.platform.InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(r4, r3)
            if (r4 != r0) goto L36
            return r0
        L36:
            androidx.compose.ui.window.PopupLayout r4 = r3.$popupLayout
            r4.pollForLocationOnScreenChange()
            goto L23
        L3c:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
