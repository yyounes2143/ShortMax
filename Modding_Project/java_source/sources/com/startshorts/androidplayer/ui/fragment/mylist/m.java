package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.lifecycle.Observer;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyCollectionFragment2.kt */
@Metadata
/* loaded from: classes7.dex */
public final class m {

    /* compiled from: MyCollectionFragment2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class a implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46353a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46353a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f46353a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46353a.invoke(obj);
        }
    }

    public static final void a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            Toast.makeText(context, R$string.download_delete_success, 0).show();
            return;
        }
        View inflate = LayoutInflater.from(context).inflate(R$layout.layout_toast_del, (ViewGroup) null);
        Toast toast = new Toast(context);
        toast.setDuration(0);
        toast.setView(inflate);
        toast.setGravity(17, 0, 0);
        toast.show();
    }
}
