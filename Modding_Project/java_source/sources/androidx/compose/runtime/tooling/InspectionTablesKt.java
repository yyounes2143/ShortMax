package androidx.compose.runtime.tooling;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: InspectionTables.kt */
@Metadata
/* loaded from: classes.dex */
public final class InspectionTablesKt {
    @NotNull
    private static final ProvidableCompositionLocal<Set<CompositionData>> LocalInspectionTables = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.runtime.tooling.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Set LocalInspectionTables$lambda$0;
            LocalInspectionTables$lambda$0 = InspectionTablesKt.LocalInspectionTables$lambda$0();
            return LocalInspectionTables$lambda$0;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set LocalInspectionTables$lambda$0() {
        return null;
    }

    @NotNull
    public static final ProvidableCompositionLocal<Set<CompositionData>> getLocalInspectionTables() {
        return LocalInspectionTables;
    }
}
