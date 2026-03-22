package androidx.compose.ui.semantics;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsModifierCore implements SemanticsModifier {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static AtomicInteger lastIdentifier = new AtomicInteger(0);

    /* renamed from: id  reason: collision with root package name */
    private final int f1287id;
    @NotNull
    private final SemanticsConfiguration semanticsConfiguration;

    /* compiled from: SemanticsModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int generateSemanticsId() {
            return SemanticsModifierCore.lastIdentifier.addAndGet(1);
        }

        private Companion() {
        }
    }

    public SemanticsModifierCore(int i10, boolean z10, boolean z11, @NotNull Function1<? super SemanticsPropertyReceiver, Unit> properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.f1287id = i10;
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.setMergingSemanticsOfDescendants(z10);
        semanticsConfiguration.setClearingSemantics(z11);
        properties.invoke(semanticsConfiguration);
        this.semanticsConfiguration = semanticsConfiguration;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticsModifierCore)) {
            return false;
        }
        SemanticsModifierCore semanticsModifierCore = (SemanticsModifierCore) obj;
        if (getId() == semanticsModifierCore.getId() && Intrinsics.areEqual(getSemanticsConfiguration(), semanticsModifierCore.getSemanticsConfiguration())) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    public int getId() {
        return this.f1287id;
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    @NotNull
    public SemanticsConfiguration getSemanticsConfiguration() {
        return this.semanticsConfiguration;
    }

    public int hashCode() {
        return (getSemanticsConfiguration().hashCode() * 31) + Integer.hashCode(getId());
    }
}
