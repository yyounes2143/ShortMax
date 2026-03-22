package io.bidmachine.rendering.internal;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.Nullable;
import yq.p;
@Metadata
/* loaded from: classes8.dex */
public class a extends Activity {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
    }

    protected void d() {
        p.g(this, ViewCompat.MEASURED_STATE_MASK);
        p.h(this);
    }

    @Override // android.app.Activity
    @c
    public void onBackPressed() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        d();
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: tp.d
                public final void onBackInvoked() {
                    io.bidmachine.rendering.internal.a.c(io.bidmachine.rendering.internal.a.this);
                }
            });
        }
    }

    protected void b() {
    }
}
