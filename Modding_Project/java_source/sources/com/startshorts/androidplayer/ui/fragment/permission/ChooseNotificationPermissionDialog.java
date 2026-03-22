package com.startshorts.androidplayer.ui.fragment.permission;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewGroupKt;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChooseNotificationPermissionDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChooseNotificationPermissionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,138:1\n1872#2,3:139\n1317#3,2:142\n*S KotlinDebug\n*F\n+ 1 ChooseNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog\n*L\n100#1:139,3\n120#1:142,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ChooseNotificationPermissionDialog extends NotificationPermissionDialogFragment<DialogChooseNotificationPermissionBinding> {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final b f46371u = new b(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChooseNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f46372a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f46373b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private String f46374c;

        public a(@NotNull String text, boolean z10, @NotNull String select) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(select, "select");
            this.f46372a = text;
            this.f46373b = z10;
            this.f46374c = select;
        }

        @NotNull
        public final String a() {
            return this.f46374c;
        }

        public final void b(boolean z10) {
            this.f46373b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f46372a, aVar.f46372a) && this.f46373b == aVar.f46373b && Intrinsics.areEqual(this.f46374c, aVar.f46374c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f46372a.hashCode() * 31) + Boolean.hashCode(this.f46373b)) * 31) + this.f46374c.hashCode();
        }

        @NotNull
        public String toString() {
            return "ChooseItem(text=" + this.f46372a + ", checked=" + this.f46373b + ", select=" + this.f46374c + ')';
        }
    }

    /* compiled from: ChooseNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: ChooseNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ChooseNotificationPermissionDialog.this.dismiss();
        }
    }

    /* compiled from: ChooseNotificationPermissionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            ChooseNotificationPermissionDialog chooseNotificationPermissionDialog = ChooseNotificationPermissionDialog.this;
            bundle.putString("scene", chooseNotificationPermissionDialog.N());
            bundle.putString("select", chooseNotificationPermissionDialog.O());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "noti_select_popup_click", bundle, 0L, 4, null);
            NotificationPermissionDialogFragment.Q(ChooseNotificationPermissionDialog.this, null, null, 3, null);
        }
    }

    private final a b0(View view) {
        if (view.getTag() instanceof a) {
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog.ChooseItem");
            return (a) tag;
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void c0() {
        /*
            r12 = this;
            ri.b r0 = new ri.b
            r0.<init>()
            java.lang.String r1 = r12.N()
            java.lang.String r2 = "coming_soon"
            r3 = 2
            java.lang.String r4 = "check_in"
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L29
            int r7 = r1.hashCode()
            switch(r7) {
                case -1435153115: goto L34;
                case -1394007047: goto L2b;
                case -430010693: goto L23;
                case 1536888764: goto L1a;
                default: goto L19;
            }
        L19:
            goto L29
        L1a:
            boolean r1 = r1.equals(r4)
            if (r1 != 0) goto L21
            goto L29
        L21:
            r1 = r3
            goto L3e
        L23:
            java.lang.String r7 = "immersion_back"
            boolean r1 = r1.equals(r7)
        L29:
            r1 = r6
            goto L3e
        L2b:
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L32
            goto L29
        L32:
            r1 = 3
            goto L3e
        L34:
            java.lang.String r7 = "favorite_click"
            boolean r1 = r1.equals(r7)
            if (r1 != 0) goto L3d
            goto L29
        L3d:
            r1 = r5
        L3e:
            java.lang.String r7 = "new"
            java.lang.String r8 = "update"
            java.lang.String[] r2 = new java.lang.String[]{r7, r8, r4, r2}
            java.util.List r2 = kotlin.collections.CollectionsKt.q(r2)
            java.util.Iterator r2 = r2.iterator()
            android.content.Context r4 = r12.requireContext()
            java.lang.String r7 = "requireContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r7)
            java.lang.String r7 = "notification_permission_dialog_choose_item_"
            r8 = 0
            java.util.List r3 = jk.d.c(r4, r7, r6, r3, r8)
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.Iterator r3 = r3.iterator()
            r4 = r6
        L65:
            boolean r7 = r3.hasNext()
            if (r7 == 0) goto Le4
            java.lang.Object r7 = r3.next()
            int r8 = r4 + 1
            if (r4 >= 0) goto L76
            kotlin.collections.CollectionsKt.y()
        L76:
            java.lang.String r7 = (java.lang.String) r7
            android.view.LayoutInflater r9 = r12.getLayoutInflater()
            int r10 = com.startshorts.androidplayer.R$layout.view_notification_choose_item
            androidx.databinding.ViewDataBinding r11 = r12.m()
            com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBinding r11 = (com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBinding) r11
            android.widget.LinearLayout r11 = r11.f38700a
            android.view.View r9 = r9.inflate(r10, r11, r6)
            androidx.databinding.ViewDataBinding r10 = r12.m()
            com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBinding r10 = (com.startshorts.androidplayer.databinding.DialogChooseNotificationPermissionBinding) r10
            android.widget.LinearLayout r10 = r10.f38700a
            r10.addView(r9)
            boolean r10 = r2.hasNext()
            if (r10 == 0) goto La2
            java.lang.Object r10 = r2.next()
            java.lang.String r10 = (java.lang.String) r10
            goto Lb8
        La2:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "initChooseItem -> hasNext = null, selectIterator="
            r10.append(r11)
            r10.append(r2)
            java.lang.String r10 = r10.toString()
            r12.g(r10)
            java.lang.String r10 = ""
        Lb8:
            com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog$a r11 = new com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog$a
            r11.<init>(r7, r6, r10)
            r9.setTag(r11)
            int r10 = com.startshorts.androidplayer.R$id.notification_choose_item_tv
            android.view.View r10 = r9.findViewById(r10)
            android.widget.TextView r10 = (android.widget.TextView) r10
            r10.setText(r7)
            ri.c r7 = new ri.c
            r7.<init>()
            r9.setOnClickListener(r7)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            if (r4 != r1) goto Lda
            r4 = r5
            goto Ldb
        Lda:
            r4 = r6
        Ldb:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            r0.invoke(r9, r4)
            r4 = r8
            goto L65
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog.c0():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(ChooseNotificationPermissionDialog chooseNotificationPermissionDialog, View view, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "view");
        a b02 = chooseNotificationPermissionDialog.b0(view);
        if (b02 != null) {
            b02.b(z10);
            if (z10) {
                chooseNotificationPermissionDialog.X(b02.a());
            }
        }
        ImageView imageView = (ImageView) view.findViewById(R$id.notification_choose_item_iv);
        if (z10) {
            imageView.setImageResource(R$drawable.ic_notification_choose_item_check);
        } else {
            imageView.setImageResource(R$drawable.ic_notification_choose_item_uncheck);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(final View view, Function2 function2, ChooseNotificationPermissionDialog chooseNotificationPermissionDialog, View view2) {
        Object tag = view.getTag();
        Boolean bool = Boolean.TRUE;
        if (!Intrinsics.areEqual(tag, bool)) {
            Intrinsics.checkNotNull(view);
            Object tag2 = view.getTag();
            if (tag2 == null) {
                tag2 = Boolean.FALSE;
            }
            function2.invoke(view, Boolean.valueOf(!Intrinsics.areEqual(tag2, bool)));
            LinearLayout checkBoxContainer = ((DialogChooseNotificationPermissionBinding) chooseNotificationPermissionDialog.m()).f38700a;
            Intrinsics.checkNotNullExpressionValue(checkBoxContainer, "checkBoxContainer");
            for (View view3 : j.t(ViewGroupKt.getChildren(checkBoxContainer), new Function1() { // from class: ri.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean f02;
                    f02 = ChooseNotificationPermissionDialog.f0(view, (View) obj);
                    return Boolean.valueOf(f02);
                }
            })) {
                function2.invoke(view3, Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f0(View view, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, view);
    }

    private final void g0() {
        ((DialogChooseNotificationPermissionBinding) m()).f38701b.setOnClickListener(new c());
    }

    private final void h0() {
        ((DialogChooseNotificationPermissionBinding) m()).f38704e.setOnClickListener(new d());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_choose_notification_permission;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "ChooseNotificationPermissionDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        g0();
        h0();
        c0();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", N());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "noti_select_popup_show", bundle2, 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.permission.NotificationPermissionDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }
}
