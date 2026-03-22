package com.startshorts.androidplayer.ui.activity.test;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.ActivityTestBinding;
import com.startshorts.androidplayer.databinding.ItemTestTextItemBinding;
import com.startshorts.androidplayer.ui.activity.base.PermissionActivity;
import com.startshorts.androidplayer.ui.activity.test.TestActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import di.f;
import di.i;
import java.lang.reflect.Modifier;
import jk.b0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: TestActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTestActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestActivity.kt\ncom/startshorts/androidplayer/ui/activity/test/TestActivity\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n+ 3 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n*L\n1#1,90:1\n1160#2,7:91\n257#3,6:98\n*S KotlinDebug\n*F\n+ 1 TestActivity.kt\ncom/startshorts/androidplayer/ui/activity/test/TestActivity\n*L\n64#1:91,7\n57#1:98,6\n*E\n"})
/* loaded from: classes7.dex */
public final class TestActivity extends PermissionActivity<ActivityTestBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f45537p = new a(null);

    /* compiled from: TestActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull AppCompatActivity context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, TestActivity.class));
        }

        private a() {
        }
    }

    /* compiled from: TestActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.TEXT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: TestActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            TestActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(final TestActivity testActivity, BindingAdapter setup, RecyclerView it) {
        Intrinsics.checkNotNullParameter(setup, "$this$setup");
        Intrinsics.checkNotNullParameter(it, "it");
        Function2 function2 = new Function2() { // from class: di.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int S;
                S = TestActivity.S((f) obj, ((Integer) obj2).intValue());
                return Integer.valueOf(S);
            }
        };
        if (Modifier.isInterface(f.class.getModifiers())) {
            setup.q().put(Reflection.typeOf(f.class), (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
        } else {
            setup.y().put(Reflection.typeOf(f.class), (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
        }
        setup.D(new Function1() { // from class: di.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T;
                T = TestActivity.T(TestActivity.this, (BindingAdapter.BindingViewHolder) obj);
                return T;
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int S(f addType, int i10) {
        Intrinsics.checkNotNullParameter(addType, "$this$addType");
        if (b.$EnumSwitchMapping$0[addType.e().ordinal()] == 1) {
            return R$layout.item_test_text_item;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(final TestActivity testActivity, BindingAdapter.BindingViewHolder onBind) {
        ItemTestTextItemBinding itemTestTextItemBinding;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        final f fVar = (f) onBind.j();
        if (onBind.l() == null) {
            Object invoke = ItemTestTextItemBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
            if (invoke != null) {
                itemTestTextItemBinding = (ItemTestTextItemBinding) invoke;
                onBind.n(itemTestTextItemBinding);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemTestTextItemBinding");
            }
        } else {
            ViewBinding l10 = onBind.l();
            if (l10 != null) {
                itemTestTextItemBinding = (ItemTestTextItemBinding) l10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemTestTextItemBinding");
            }
        }
        itemTestTextItemBinding.f41019b.setText(fVar.d());
        View root = itemTestTextItemBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: di.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit U;
                U = TestActivity.U(f.this, testActivity, (View) obj);
                return U;
            }
        }, 1, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(f fVar, TestActivity testActivity, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        fVar.c().invoke(testActivity);
        return Unit.f60915a;
    }

    public final void Q() {
        View toolbarView = ((ActivityTestBinding) E()).f38544e;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        ((ActivityTestBinding) E()).f38540a.setOnClickListener(new c());
        ((ActivityTestBinding) E()).f38541b.setText("Debug Info");
        ((ActivityTestBinding) E()).f38543d.setItemAnimator(null);
        RecyclerView recyclerView = ((ActivityTestBinding) E()).f38543d;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.g(o1.b.e(recyclerView, 0, false, false, false, 15, null), new Function2() { // from class: di.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit R;
                R = TestActivity.R(TestActivity.this, (BindingAdapter) obj, (RecyclerView) obj2);
                return R;
            }
        }).K(i.f50401a.c());
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_test;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        P();
        Q();
        O();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "TestActivity";
    }

    private final void O() {
    }

    private final void P() {
    }
}
