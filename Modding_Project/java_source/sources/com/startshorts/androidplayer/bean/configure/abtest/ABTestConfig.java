package com.startshorts.androidplayer.bean.configure.abtest;

import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ABTestConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ABTestConfig {
    @NotNull
    private final String abTestKey;
    @NotNull
    private Function1<? super c<? super Boolean>, ? extends Object> activeAble;
    @NotNull
    private String controlValue;
    @Nullable
    private String fixedABTestValue;
    private boolean isActivated;
    @NotNull
    private Function0<Boolean> isEnable;
    @Nullable
    private ConfigOptionsForTester optionsForTester;
    @NotNull
    private Function0<Unit> runAfterActive;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ABTestConfig.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig$1", f = "ABTestConfig.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super Boolean>, Object> {
        int label;

        AnonymousClass1(c<? super AnonymousClass1> cVar) {
            super(1, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super Boolean> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    public ABTestConfig(@NotNull String abTestKey, boolean z10, @NotNull Function1<? super c<? super Boolean>, ? extends Object> activeAble, @NotNull Function0<Unit> runAfterActive, @Nullable ConfigOptionsForTester configOptionsForTester, @NotNull String controlValue) {
        Intrinsics.checkNotNullParameter(abTestKey, "abTestKey");
        Intrinsics.checkNotNullParameter(activeAble, "activeAble");
        Intrinsics.checkNotNullParameter(runAfterActive, "runAfterActive");
        Intrinsics.checkNotNullParameter(controlValue, "controlValue");
        this.abTestKey = abTestKey;
        this.isActivated = z10;
        this.activeAble = activeAble;
        this.runAfterActive = runAfterActive;
        this.optionsForTester = configOptionsForTester;
        this.controlValue = controlValue;
        this.isEnable = new Function0() { // from class: com.startshorts.androidplayer.bean.configure.abtest.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean isEnable$lambda$1;
                isEnable$lambda$1 = ABTestConfig.isEnable$lambda$1();
                return Boolean.valueOf(isEnable$lambda$1);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isEnable$lambda$1() {
        return false;
    }

    public final int abTestIntValue() {
        Integer intOrNull = StringsKt.toIntOrNull(abTestValue());
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 0;
    }

    @NotNull
    public final String abTestValue() {
        if (!this.isActivated) {
            return "";
        }
        String str = this.fixedABTestValue;
        if (str != null) {
            if (str == null) {
                return "";
            }
            return str;
        }
        return RemoteConfigRepo.f43788a.q(this.abTestKey);
    }

    public final void clearFixedABTestValue() {
        this.fixedABTestValue = null;
    }

    @NotNull
    public final String getAbTestKey() {
        return this.abTestKey;
    }

    @NotNull
    public final Function1<c<? super Boolean>, Object> getActiveAble() {
        return this.activeAble;
    }

    @NotNull
    public final String getControlValue() {
        return this.controlValue;
    }

    @Nullable
    public final ConfigOptionsForTester getOptionsForTester() {
        return this.optionsForTester;
    }

    @NotNull
    public final Function0<Unit> getRunAfterActive() {
        return this.runAfterActive;
    }

    public final void initFixedABTestValue() {
        this.fixedABTestValue = RemoteConfigRepo.f43788a.q(this.abTestKey);
        Logger logger = Logger.f41511a;
        logger.h("ABTestConfig", "init abTestValue: " + this.abTestKey + ", fixedABTestValue: " + this.fixedABTestValue);
    }

    public final boolean isActivated() {
        return this.isActivated;
    }

    @NotNull
    public final Function0<Boolean> isEnable() {
        return this.isEnable;
    }

    public final boolean isTargetValue(int i10) {
        return abTestIntValue() == i10;
    }

    public final boolean isTestGroup() {
        if (this.controlValue.length() == 0) {
            Logger.f41511a.e("ABTestConfig", "ControlValue is empty, please set is first!");
            return false;
        }
        return !Intrinsics.areEqual(abTestValue(), this.controlValue);
    }

    public final void setActivated(boolean z10) {
        this.isActivated = z10;
    }

    public final void setActiveAble(@NotNull Function1<? super c<? super Boolean>, ? extends Object> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.activeAble = function1;
    }

    public final void setControlValue(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.controlValue = str;
    }

    public final void setEnable(@NotNull Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.isEnable = function0;
    }

    public final void setOptionsForTester(@Nullable ConfigOptionsForTester configOptionsForTester) {
        this.optionsForTester = configOptionsForTester;
    }

    public final void setRunAfterActive(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.runAfterActive = function0;
    }

    @NotNull
    public final String settingDialogMessage() {
        return "当前值[" + abTestValue() + ']';
    }

    @NotNull
    public final String settingDialogTitle() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        ConfigOptionsForTester configOptionsForTester = this.optionsForTester;
        if (configOptionsForTester != null) {
            str = configOptionsForTester.getTitle();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append("实验组");
        return sb2.toString();
    }

    @NotNull
    public final String settingListItemTitle() {
        String str;
        String abTestValue = abTestValue();
        if (abTestValue.length() < 2) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            abTestValue = String.format("%-2s", Arrays.copyOf(new Object[]{abTestValue()}, 1));
            Intrinsics.checkNotNullExpressionValue(abTestValue, "format(...)");
        }
        StringBuilder sb2 = new StringBuilder();
        ConfigOptionsForTester configOptionsForTester = this.optionsForTester;
        if (configOptionsForTester != null) {
            str = configOptionsForTester.getTitle();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append('\n');
        sb2.append(abTestValue);
        sb2.append(" | ");
        sb2.append(this.abTestKey);
        return sb2.toString();
    }

    public final boolean isTargetValue(@NotNull String target) {
        Intrinsics.checkNotNullParameter(target, "target");
        return Intrinsics.areEqual(abTestValue(), target);
    }

    public /* synthetic */ ABTestConfig(String str, boolean z10, Function1 function1, Function0 function0, ConfigOptionsForTester configOptionsForTester, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? new AnonymousClass1(null) : function1, (i10 & 8) != 0 ? new Function0() { // from class: com.startshorts.androidplayer.bean.configure.abtest.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit unit;
                unit = Unit.f60915a;
                return unit;
            }
        } : function0, (i10 & 16) != 0 ? null : configOptionsForTester, (i10 & 32) != 0 ? MBridgeConstans.ENDCARD_URL_TYPE_PL : str2);
    }
}
