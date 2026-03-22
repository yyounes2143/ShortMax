package androidx.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: MapColumn.kt */
@Target({ElementType.TYPE_USE})
@Retention(RetentionPolicy.CLASS)
@Metadata
/* loaded from: classes2.dex */
public @interface MapColumn {
    String columnName();

    String tableName() default "";
}
