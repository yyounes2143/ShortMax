package androidx.compose.runtime.internal;

import androidx.compose.runtime.ComposeCompilerApi;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: LiveLiteral.kt */
@Target({ElementType.TYPE})
@ComposeCompilerApi
@Metadata
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface LiveLiteralFileInfo {
    String file();
}
