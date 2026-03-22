package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.jvm.internal.RepeatableContainer;
/* compiled from: RequiresExtension.jvm.kt */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
@Metadata
@Documented
@Repeatable(Container.class)
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface RequiresExtension {

    /* compiled from: RequiresExtension.jvm.kt */
    @Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
    @Metadata
    @Retention(RetentionPolicy.CLASS)
    @RepeatableContainer
    /* loaded from: classes.dex */
    public @interface Container {
        RequiresExtension[] value();
    }

    int extension();

    int version();
}
