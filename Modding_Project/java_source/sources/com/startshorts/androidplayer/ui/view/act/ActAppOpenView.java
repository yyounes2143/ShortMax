package com.startshorts.androidplayer.ui.view.act;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import ce.j;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.act.ActAppOpenView;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.b;
import fk.u;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import lf.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.l;
import yd.d;
/* compiled from: ActAppOpenView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActAppOpenView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,265:1\n1#2:266\n256#3,2:267\n*S KotlinDebug\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView\n*L\n211#1:267,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ActAppOpenView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final Companion f46961j = new Companion(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private CustomFrescoView f46962b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextureView f46963c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f46964d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private PlayerViewModel f46965e;

    /* renamed from: f  reason: collision with root package name */
    private int f46966f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f46967g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private r f46968h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private Function0<Unit> f46969i;

    /* compiled from: ActAppOpenView.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActAppOpenView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n295#2,2:266\n295#2,2:268\n*S KotlinDebug\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion\n*L\n51#1:266,2\n67#1:268,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object b(com.startshorts.androidplayer.bean.act.ActResource r7, rs.c<? super java.lang.Boolean> r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReady$1
                if (r0 == 0) goto L13
                r0 = r8
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReady$1 r0 = (com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReady$1) r0
                int r1 = r0.f46972j
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f46972j = r1
                goto L18
            L13:
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReady$1 r0 = new com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReady$1
                r0.<init>(r6, r8)
            L18:
                java.lang.Object r8 = r0.f46970h
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f46972j
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.f.b(r8)
                goto L57
            L29:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L31:
                kotlin.f.b(r8)
                com.startshorts.androidplayer.manager.act.ActResourceManager r8 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
                boolean r2 = r8.n(r7)
                if (r2 != 0) goto L5d
                com.startshorts.androidplayer.log.Logger r2 = com.startshorts.androidplayer.log.Logger.f41511a
                java.lang.String r4 = "ActAppOpenView"
                java.lang.String r5 = "check isResReady -> isResourceReady is false"
                r2.e(r4, r5)
                boolean r2 = r7.isBrandAdVideo()
                if (r2 != 0) goto L54
                r0.f46972j = r3
                java.lang.Object r7 = r8.u(r0)
                if (r7 != r1) goto L57
                return r1
            L54:
                r8.v(r7)
            L57:
                r7 = 0
                java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r7)
                return r7
            L5d:
                java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r3)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.act.ActAppOpenView.Companion.b(com.startshorts.androidplayer.bean.act.ActResource, rs.c):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0062 A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0076 A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x007e A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0070 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.act.ActResource> r10) {
            /*
                r9 = this;
                boolean r0 = r10 instanceof com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP0$1
                if (r0 == 0) goto L13
                r0 = r10
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP0$1 r0 = (com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP0$1) r0
                int r1 = r0.f46976k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f46976k = r1
                goto L18
            L13:
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP0$1 r0 = new com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP0$1
                r0.<init>(r9, r10)
            L18:
                java.lang.Object r10 = r0.f46974i
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f46976k
                java.lang.String r3 = "ActAppOpenView"
                r4 = 2
                r5 = 1
                r6 = 0
                if (r2 == 0) goto L45
                if (r2 == r5) goto L3d
                if (r2 != r4) goto L35
                java.lang.Object r0 = r0.f46973h
                com.startshorts.androidplayer.bean.act.ActResource r0 = (com.startshorts.androidplayer.bean.act.ActResource) r0
                kotlin.f.b(r10)     // Catch: java.lang.Exception -> L33
                goto L8c
            L33:
                r10 = move-exception
                goto L96
            L35:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L3d:
                java.lang.Object r2 = r0.f46973h
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion r2 = (com.startshorts.androidplayer.ui.view.act.ActAppOpenView.Companion) r2
                kotlin.f.b(r10)     // Catch: java.lang.Exception -> L33
                goto L56
            L45:
                kotlin.f.b(r10)
                com.startshorts.androidplayer.manager.act.ActResourceManager r10 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a     // Catch: java.lang.Exception -> L33
                r0.f46973h = r9     // Catch: java.lang.Exception -> L33
                r0.f46976k = r5     // Catch: java.lang.Exception -> L33
                java.lang.Object r10 = r10.r(r0)     // Catch: java.lang.Exception -> L33
                if (r10 != r1) goto L55
                return r1
            L55:
                r2 = r9
            L56:
                java.lang.Iterable r10 = (java.lang.Iterable) r10     // Catch: java.lang.Exception -> L33
                java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Exception -> L33
            L5c:
                boolean r5 = r10.hasNext()     // Catch: java.lang.Exception -> L33
                if (r5 == 0) goto L70
                java.lang.Object r5 = r10.next()     // Catch: java.lang.Exception -> L33
                r7 = r5
                com.startshorts.androidplayer.bean.act.ActResource r7 = (com.startshorts.androidplayer.bean.act.ActResource) r7     // Catch: java.lang.Exception -> L33
                int r7 = r7.getPriority()     // Catch: java.lang.Exception -> L33
                if (r7 != 0) goto L5c
                goto L71
            L70:
                r5 = r6
            L71:
                r10 = r5
                com.startshorts.androidplayer.bean.act.ActResource r10 = (com.startshorts.androidplayer.bean.act.ActResource) r10     // Catch: java.lang.Exception -> L33
                if (r10 != 0) goto L7e
                com.startshorts.androidplayer.log.Logger r10 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L33
                java.lang.String r0 = "check isResReadyP0 -> resource is null"
                r10.e(r3, r0)     // Catch: java.lang.Exception -> L33
                return r6
            L7e:
                r0.f46973h = r10     // Catch: java.lang.Exception -> L33
                r0.f46976k = r4     // Catch: java.lang.Exception -> L33
                java.lang.Object r0 = r2.b(r10, r0)     // Catch: java.lang.Exception -> L33
                if (r0 != r1) goto L89
                return r1
            L89:
                r8 = r0
                r0 = r10
                r10 = r8
            L8c:
                java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Exception -> L33
                boolean r10 = r10.booleanValue()     // Catch: java.lang.Exception -> L33
                if (r10 == 0) goto L95
                r6 = r0
            L95:
                return r6
            L96:
                com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "check isResReadyP0 exception -> "
                r1.append(r2)
                java.lang.String r10 = r10.getMessage()
                r1.append(r10)
                java.lang.String r10 = r1.toString()
                r0.e(r3, r10)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.act.ActAppOpenView.Companion.c(rs.c):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0062 A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0076 A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x007e A[Catch: Exception -> 0x0033, TryCatch #0 {Exception -> 0x0033, blocks: (B:13:0x002f, B:42:0x008c, B:20:0x0041, B:27:0x0056, B:28:0x005c, B:30:0x0062, B:34:0x0071, B:36:0x0076, B:38:0x007e, B:23:0x0048), top: B:48:0x0025 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0070 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object d(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.act.ActResource> r11) {
            /*
                r10 = this;
                boolean r0 = r11 instanceof com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP1$1
                if (r0 == 0) goto L13
                r0 = r11
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP1$1 r0 = (com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP1$1) r0
                int r1 = r0.f46980k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f46980k = r1
                goto L18
            L13:
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP1$1 r0 = new com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion$isResReadyP1$1
                r0.<init>(r10, r11)
            L18:
                java.lang.Object r11 = r0.f46978i
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f46980k
                java.lang.String r3 = "ActAppOpenView"
                r4 = 2
                r5 = 1
                r6 = 0
                if (r2 == 0) goto L45
                if (r2 == r5) goto L3d
                if (r2 != r4) goto L35
                java.lang.Object r0 = r0.f46977h
                com.startshorts.androidplayer.bean.act.ActResource r0 = (com.startshorts.androidplayer.bean.act.ActResource) r0
                kotlin.f.b(r11)     // Catch: java.lang.Exception -> L33
                goto L8c
            L33:
                r11 = move-exception
                goto L96
            L35:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L3d:
                java.lang.Object r2 = r0.f46977h
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion r2 = (com.startshorts.androidplayer.ui.view.act.ActAppOpenView.Companion) r2
                kotlin.f.b(r11)     // Catch: java.lang.Exception -> L33
                goto L56
            L45:
                kotlin.f.b(r11)
                com.startshorts.androidplayer.manager.act.ActResourceManager r11 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a     // Catch: java.lang.Exception -> L33
                r0.f46977h = r10     // Catch: java.lang.Exception -> L33
                r0.f46980k = r5     // Catch: java.lang.Exception -> L33
                java.lang.Object r11 = r11.r(r0)     // Catch: java.lang.Exception -> L33
                if (r11 != r1) goto L55
                return r1
            L55:
                r2 = r10
            L56:
                java.lang.Iterable r11 = (java.lang.Iterable) r11     // Catch: java.lang.Exception -> L33
                java.util.Iterator r11 = r11.iterator()     // Catch: java.lang.Exception -> L33
            L5c:
                boolean r7 = r11.hasNext()     // Catch: java.lang.Exception -> L33
                if (r7 == 0) goto L70
                java.lang.Object r7 = r11.next()     // Catch: java.lang.Exception -> L33
                r8 = r7
                com.startshorts.androidplayer.bean.act.ActResource r8 = (com.startshorts.androidplayer.bean.act.ActResource) r8     // Catch: java.lang.Exception -> L33
                int r8 = r8.getPriority()     // Catch: java.lang.Exception -> L33
                if (r8 != r5) goto L5c
                goto L71
            L70:
                r7 = r6
            L71:
                r11 = r7
                com.startshorts.androidplayer.bean.act.ActResource r11 = (com.startshorts.androidplayer.bean.act.ActResource) r11     // Catch: java.lang.Exception -> L33
                if (r11 != 0) goto L7e
                com.startshorts.androidplayer.log.Logger r11 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L33
                java.lang.String r0 = "check isResReadyP1 -> resource is null"
                r11.e(r3, r0)     // Catch: java.lang.Exception -> L33
                return r6
            L7e:
                r0.f46977h = r11     // Catch: java.lang.Exception -> L33
                r0.f46980k = r4     // Catch: java.lang.Exception -> L33
                java.lang.Object r0 = r2.b(r11, r0)     // Catch: java.lang.Exception -> L33
                if (r0 != r1) goto L89
                return r1
            L89:
                r9 = r0
                r0 = r11
                r11 = r9
            L8c:
                java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Exception -> L33
                boolean r11 = r11.booleanValue()     // Catch: java.lang.Exception -> L33
                if (r11 == 0) goto L95
                r6 = r0
            L95:
                return r6
            L96:
                com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "check isResReadyP1 exception -> "
                r1.append(r2)
                java.lang.String r11 = r11.getMessage()
                r1.append(r11)
                java.lang.String r11 = r1.toString()
                r0.e(r3, r11)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.act.ActAppOpenView.Companion.d(rs.c):java.lang.Object");
        }

        private Companion() {
        }
    }

    /* compiled from: ActAppOpenView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ImageView f46982f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ImageView imageView) {
            super(0L, 1, null);
            this.f46982f = imageView;
        }

        @Override // yd.d
        public void a(View v10) {
            int i10;
            Intrinsics.checkNotNullParameter(v10, "v");
            ActAppOpenView actAppOpenView = ActAppOpenView.this;
            actAppOpenView.f46967g = !actAppOpenView.f46967g;
            ImageView imageView = this.f46982f;
            if (ActAppOpenView.this.f46967g) {
                i10 = R$drawable.ic_video_preview_no_sound;
            } else {
                i10 = R$drawable.ic_video_preview_sound;
            }
            imageView.setImageResource(i10);
            PlayerViewModel playerViewModel = ActAppOpenView.this.f46965e;
            if (playerViewModel != null) {
                playerViewModel.M(new b.c(ActAppOpenView.this.f46967g));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActAppOpenView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f46966f = 5;
        this.f46967g = true;
        this.f46969i = new Function0() { // from class: bj.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit M;
                M = ActAppOpenView.M();
                return M;
            }
        };
    }

    private final void G() {
        r rVar = this.f46968h;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            s("cancelCountDownJob");
        }
        this.f46968h = null;
    }

    private final void H() {
        PlayerViewModel playerViewModel;
        if (this.f46965e == null) {
            ViewModelStoreOwner viewModelStoreOwner = ViewTreeViewModelStoreOwner.get(this);
            if (viewModelStoreOwner != null) {
                playerViewModel = (PlayerViewModel) new ViewModelProvider(viewModelStoreOwner).get(PlayerViewModel.class);
            } else {
                playerViewModel = null;
            }
            this.f46965e = playerViewModel;
        }
    }

    private final void I() {
        f3.a controller;
        Animatable f10;
        try {
            G();
            CustomFrescoView customFrescoView = this.f46962b;
            if (customFrescoView != null && (controller = customFrescoView.getController()) != null && (f10 = controller.f()) != null) {
                f10.stop();
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ActAppOpenView", "dismiss exception -> " + e10.getMessage());
        }
        this.f46969i.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(final ActAppOpenView actAppOpenView, final Context context, View view) {
        actAppOpenView.N(new Function1() { // from class: bj.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K;
                K = ActAppOpenView.K(ActAppOpenView.this, context, (ActResource) obj);
                return K;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(ActAppOpenView actAppOpenView, Context context, ActResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Logger logger = Logger.f41511a;
        logger.h("ActAppOpenView", "showActInOpenScreen onClicked -> actResource=" + resource);
        EventManager eventManager = EventManager.f42463a;
        eventManager.S("bf_appopen_show", resource);
        EventManager.s0(eventManager, "bf_appopen_click", EventManager.x(eventManager, resource, false, 2, null), 0L, 4, null);
        if (resource.isBrandAd()) {
            String skipValue = resource.getSkipValue();
            if (skipValue != null) {
                IntentUtil.f48164a.c(context, skipValue);
            }
        } else {
            j.f3485a.x(resource);
            actAppOpenView.I();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(ActAppOpenView actAppOpenView, View view) {
        actAppOpenView.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M() {
        return Unit.f60915a;
    }

    private final void N(Function1<? super ActResource, Unit> function1) {
        if (!isAttachedToWindow()) {
            Logger.f41511a.e("ActAppOpenView", "onActActive failed -> isAttachedToWindow = false");
        } else {
            CoroutineUtil.f48072a.j("onActActive", true, new ActAppOpenView$onActActive$1(this, function1, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        N(new Function1() { // from class: bj.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Q;
                Q = ActAppOpenView.Q(ActAppOpenView.this, (ActResource) obj);
                return Q;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(ActAppOpenView actAppOpenView, ActResource resource) {
        View view;
        String formatAdsVideoUrl;
        PlayerViewModel playerViewModel;
        View view2;
        FrameLayout frameLayout;
        TextureView textureView;
        Intrinsics.checkNotNullParameter(resource, "resource");
        EventManager eventManager = EventManager.f42463a;
        eventManager.T("bf_appopen_show", resource);
        CustomFrescoView customFrescoView = null;
        ImageView imageView = null;
        EventManager.s0(eventManager, "bf_appopen_show", EventManager.x(eventManager, resource, false, 2, null), 0L, 4, null);
        j.f3485a.l(resource);
        Logger.f41511a.h("ActAppOpenView", "showActInOpenScreen -> " + resource);
        if (resource.isBrandAdVideo()) {
            if (actAppOpenView.f46963c == null) {
                ViewStub viewStub = (ViewStub) actAppOpenView.findViewById(R$id.video_viewstub);
                if (viewStub != null) {
                    view2 = viewStub.inflate();
                } else {
                    view2 = null;
                }
                if (view2 instanceof FrameLayout) {
                    frameLayout = (FrameLayout) view2;
                } else {
                    frameLayout = null;
                }
                if (frameLayout != null) {
                    textureView = (TextureView) frameLayout.findViewById(R$id.video_view);
                } else {
                    textureView = null;
                }
                actAppOpenView.f46963c = textureView;
                if (frameLayout != null) {
                    imageView = (ImageView) frameLayout.findViewById(R$id.mute_iv);
                }
                if (imageView != null) {
                    imageView.setOnClickListener(new a(imageView));
                }
            }
            actAppOpenView.H();
            ActResourceExtraInfo extendInfo = resource.getExtendInfo();
            if (extendInfo != null && (formatAdsVideoUrl = extendInfo.getFormatAdsVideoUrl()) != null && (playerViewModel = actAppOpenView.f46965e) != null) {
                Context b10 = u.f51776a.b();
                s sVar = new s();
                sVar.y("Splash");
                sVar.u(actAppOpenView.f46963c);
                sVar.n(2);
                sVar.w(l.f64869a.b(formatAdsVideoUrl));
                sVar.v(0);
                sVar.p(false);
                sVar.r(true);
                sVar.s(1.0f);
                Unit unit = Unit.f60915a;
                playerViewModel.M(new b.e(b10, sVar));
            }
        } else {
            if (actAppOpenView.f46962b == null) {
                ViewStub viewStub2 = (ViewStub) actAppOpenView.findViewById(R$id.picture_viewstub);
                if (viewStub2 != null) {
                    view = viewStub2.inflate();
                } else {
                    view = null;
                }
                if (view instanceof CustomFrescoView) {
                    customFrescoView = view;
                }
                actAppOpenView.f46962b = customFrescoView;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView2 = actAppOpenView.f46962b;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(resource.getResourceMap());
            frescoConfig.setAutoPlayAnim(true);
            Unit unit2 = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
        }
        BaseTextView baseTextView = actAppOpenView.f46964d;
        if (baseTextView != null) {
            baseTextView.setVisibility(0);
        }
        actAppOpenView.R();
        return Unit.f60915a;
    }

    private final void R() {
        G();
        s("startCountDownJob -> " + this.f46966f + 's');
        this.f46968h = CoroutineUtil.f48072a.d(this.f46966f, new Function1() { // from class: bj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T;
                T = ActAppOpenView.T(ActAppOpenView.this, ((Integer) obj).intValue());
                return T;
            }
        }, new Function0() { // from class: bj.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit S;
                S = ActAppOpenView.S(ActAppOpenView.this);
                return S;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(ActAppOpenView actAppOpenView) {
        Logger.f41511a.h("ActAppOpenView", "countDown finish");
        actAppOpenView.I();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(ActAppOpenView actAppOpenView, int i10) {
        BaseTextView baseTextView;
        actAppOpenView.f46966f = i10;
        if (i10 != 0 && (baseTextView = actAppOpenView.f46964d) != null) {
            baseTextView.setText(actAppOpenView.getContext().getString(R$string.act_app_open_skip, String.valueOf(i10)));
        }
        return Unit.f60915a;
    }

    public final void P(@NotNull ActResource resource, @NotNull Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        this.f46969i = onDismiss;
        CoroutineUtil.l(CoroutineUtil.f48072a, "showActInOpenScreen", false, new ActAppOpenView$showActInOpenScreen$1(resource, this, onDismiss, null), 2, null);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_act_app_open;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ActAppOpenView";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        G();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (i10 != 0) {
            if (i10 == 8) {
                PlayerViewModel playerViewModel = this.f46965e;
                if (playerViewModel != null) {
                    playerViewModel.M(b.d.f48937a);
                }
                G();
                return;
            }
            return;
        }
        PlayerViewModel playerViewModel2 = this.f46965e;
        if (playerViewModel2 != null) {
            playerViewModel2.M(b.g.f48941a);
        }
        R();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f46964d = (BaseTextView) findViewById(R$id.count_down_tv);
        setOnClickListener(new View.OnClickListener() { // from class: bj.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActAppOpenView.J(ActAppOpenView.this, context, view);
            }
        });
        BaseTextView baseTextView = this.f46964d;
        if (baseTextView != null) {
            baseTextView.setOnClickListener(new View.OnClickListener() { // from class: bj.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActAppOpenView.L(ActAppOpenView.this, view);
                }
            });
        }
    }
}
