package com.startshorts.androidplayer.bean.configure;

import android.content.Context;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConfigOptionsForTester.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ConfigOptionsForTester {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAG = "ConfigOptionsForTester";
    @Nullable
    private Map<String, String> options;
    @Nullable
    private String selectedValue;
    @NotNull
    private String title = "";
    @NotNull
    private Function2<? super Context, ? super ABTestConfig, Unit> afterSelected = new Function2() { // from class: sd.a
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Unit afterSelected$lambda$0;
            afterSelected$lambda$0 = ConfigOptionsForTester.afterSelected$lambda$0((Context) obj, (ABTestConfig) obj2);
            return afterSelected$lambda$0;
        }
    };
    @NotNull
    private Function1<? super Context, Unit> afterNotABSelected = new Function1() { // from class: sd.b
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit afterNotABSelected$lambda$1;
            afterNotABSelected$lambda$1 = ConfigOptionsForTester.afterNotABSelected$lambda$1((Context) obj);
            return afterNotABSelected$lambda$1;
        }
    };

    /* compiled from: ConfigOptionsForTester.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit afterNotABSelected$lambda$1(Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit afterSelected$lambda$0(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<Context, Unit> getAfterNotABSelected() {
        return this.afterNotABSelected;
    }

    @NotNull
    public final Function2<Context, ABTestConfig, Unit> getAfterSelected() {
        return this.afterSelected;
    }

    @Nullable
    public final Map<String, String> getOptions() {
        return this.options;
    }

    @Nullable
    public final String getSelectedValue() {
        return this.selectedValue;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setAfterNotABSelected(@NotNull Function1<? super Context, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.afterNotABSelected = function1;
    }

    public final void setAfterSelected(@NotNull Function2<? super Context, ? super ABTestConfig, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.afterSelected = function2;
    }

    public final void setOptions(@Nullable Map<String, String> map) {
        this.options = map;
    }

    public final void setSelectedValue(@Nullable String str) {
        this.selectedValue = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public final String settingDialogTitle() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.title);
        sb2.append("当前值=");
        String str = this.selectedValue;
        if (str == null) {
            str = "未选择";
        }
        sb2.append(str);
        return sb2.toString();
    }

    @NotNull
    public final String settingListItemTitle() {
        return this.title;
    }
}
