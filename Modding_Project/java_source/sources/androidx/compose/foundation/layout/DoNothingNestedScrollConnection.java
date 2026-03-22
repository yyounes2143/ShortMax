package androidx.compose.foundation.layout;

import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
/* loaded from: classes.dex */
final class DoNothingNestedScrollConnection implements NestedScrollConnection {
    @NotNull
    public static final DoNothingNestedScrollConnection INSTANCE = new DoNothingNestedScrollConnection();

    private DoNothingNestedScrollConnection() {
    }
}
