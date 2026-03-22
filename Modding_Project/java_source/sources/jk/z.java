package jk;

import com.startshorts.androidplayer.bean.exception.ResponseException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThrowableExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class z {
    @NotNull
    public static final ResponseException a(@Nullable Throwable th2) {
        if (th2 == null) {
            return new ResponseException(90000, "");
        }
        if (th2 instanceof ResponseException) {
            return (ResponseException) th2;
        }
        return new ResponseException(90000, th2.getMessage());
    }
}
