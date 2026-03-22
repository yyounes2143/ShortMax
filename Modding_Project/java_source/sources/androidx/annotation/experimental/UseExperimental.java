package androidx.annotation.experimental;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import ms.c;
/* compiled from: UseExperimental.kt */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE})
@c
@Metadata
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface UseExperimental {
    Class<? extends Annotation>[] markerClass();
}
