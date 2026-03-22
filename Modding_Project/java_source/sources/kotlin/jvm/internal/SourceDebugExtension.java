package kotlin.jvm.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: SourceDebugExtension.kt */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
@Metadata
/* loaded from: classes8.dex */
public @interface SourceDebugExtension {
    String[] value();
}
