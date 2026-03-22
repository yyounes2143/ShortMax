package androidx.compose.ui.semantics;

import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsProperties.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsProperties_androidKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(SemanticsProperties_androidKt.class, "testTagsAsResourceId", "getTestTagsAsResourceId(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1))};
    @NotNull
    private static final SemanticsPropertyKey testTagsAsResourceId$delegate = SemanticsPropertiesAndroid.INSTANCE.getTestTagsAsResourceId();

    @ExperimentalComposeUiApi
    public static final boolean getTestTagsAsResourceId(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        return ((Boolean) testTagsAsResourceId$delegate.getValue(semanticsPropertyReceiver, $$delegatedProperties[0])).booleanValue();
    }

    @ExperimentalComposeUiApi
    public static final void setTestTagsAsResourceId(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z10) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        testTagsAsResourceId$delegate.setValue(semanticsPropertyReceiver, $$delegatedProperties[0], Boolean.valueOf(z10));
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getTestTagsAsResourceId$annotations(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }
}
