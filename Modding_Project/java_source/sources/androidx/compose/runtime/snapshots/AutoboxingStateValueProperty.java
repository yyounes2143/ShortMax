package androidx.compose.runtime.snapshots;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: AutoboxingStateValueProperty.kt */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
@Metadata
/* loaded from: classes.dex */
public @interface AutoboxingStateValueProperty {
    String preferredPropertyName();
}
