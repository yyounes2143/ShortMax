package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.StyleRes;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComponentDialog.kt */
@Metadata
/* loaded from: classes.dex */
public class ComponentDialog extends Dialog implements LifecycleOwner, OnBackPressedDispatcherOwner, SavedStateRegistryOwner {
    @Nullable
    private LifecycleRegistry _lifecycleRegistry;
    @NotNull
    private final OnBackPressedDispatcher onBackPressedDispatcher;
    @NotNull
    private final SavedStateRegistryController savedStateRegistryController;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComponentDialog(@NotNull Context context) {
        this(context, 0, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final LifecycleRegistry getLifecycleRegistry() {
        LifecycleRegistry lifecycleRegistry = this._lifecycleRegistry;
        if (lifecycleRegistry == null) {
            LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this);
            this._lifecycleRegistry = lifecycleRegistry2;
            return lifecycleRegistry2;
        }
        return lifecycleRegistry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBackPressedDispatcher$lambda$1(ComponentDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(@NotNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return getLifecycleRegistry();
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    @NotNull
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.onBackPressedDispatcher;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NotNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistryController.getSavedStateRegistry();
    }

    @CallSuper
    public void initializeViewTreeOwners() {
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        View decorView = window.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window!!.decorView");
        ViewTreeLifecycleOwner.set(decorView, this);
        Window window2 = getWindow();
        Intrinsics.checkNotNull(window2);
        View decorView2 = window2.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView2, "window!!.decorView");
        ViewTreeOnBackPressedDispatcherOwner.set(decorView2, this);
        Window window3 = getWindow();
        Intrinsics.checkNotNull(window3);
        View decorView3 = window3.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView3, "window!!.decorView");
        ViewTreeSavedStateRegistryOwner.set(decorView3, this);
    }

    @Override // android.app.Dialog
    @CallSuper
    public void onBackPressed() {
        this.onBackPressedDispatcher.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            Intrinsics.checkNotNullExpressionValue(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            onBackPressedDispatcher.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        }
        this.savedStateRegistryController.performRestore(bundle);
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Dialog
    @NotNull
    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        Intrinsics.checkNotNullExpressionValue(onSaveInstanceState, "super.onSaveInstanceState()");
        this.savedStateRegistryController.performSave(onSaveInstanceState);
        return onSaveInstanceState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    @CallSuper
    public void onStart() {
        super.onStart();
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    @CallSuper
    public void onStop() {
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        this._lifecycleRegistry = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        initializeViewTreeOwners();
        super.setContentView(i10);
    }

    public /* synthetic */ ComponentDialog(Context context, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComponentDialog(@NotNull Context context, @StyleRes int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.savedStateRegistryController = SavedStateRegistryController.Companion.create(this);
        this.onBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.g
            @Override // java.lang.Runnable
            public final void run() {
                ComponentDialog.onBackPressedDispatcher$lambda$1(ComponentDialog.this);
            }
        });
    }

    @Override // android.app.Dialog
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(@NotNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    public static /* synthetic */ void getOnBackPressedDispatcher$annotations() {
    }
}
